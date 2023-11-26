#include <bits/stdc++.h>
#include <ext/pb_ds/assoc_container.hpp>
using namespace __gnu_pbds;
using namespace std;
#define ff first
#define ss second
#define int long long
#define pb push_back
#define mp make_pair
#define pii pair<int, int>
#define vi vector<int>
#define mii map<int, int>
#define pqb priority_queue<int>
#define pqs priority_queue<int, vi, greater<int>>
#define setbits(x) __builtin_popcountll(x)
#define zrobits(x) __builtin_ctzll(x)
#define mod 1000000007
#define inf 1e18
#define lmax LLONG_MAX
#define ps(x, y) fixed << setprecision(y) << x
#define mk(arr, n, type) type *arr = new type[n];
#define w(x)  \
    int x;    \
    cin >> x; \
    while (x--)
#define f(i, a, n) for (int i = a; i < n; i++)
#define all(v) v.begin(), v.end()
mt19937 rng(chrono::steady_clock::now().time_since_epoch().count());
typedef tree<int, null_type, less<int>, rb_tree_tag, tree_order_statistics_node_update> pbds;
void c_p_c()
{
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    cout.tie(0);
}
struct graph
{
    int nodes;
    vector<vector<int>> adj;
    vi lev;
    void init(int n)
    {
        adj.resize(n + 1);
        lev.resize(n + 1);
        nodes = n;
    }
    void build()
    {
        for (int i = 2; i <= nodes; i++)
        {
            int pi;
            cin >> pi;
            adj[i].pb(pi);
            adj[pi].pb(i);
        }
    }
    void level(int n = 1, int par = 0)
    {
        lev[n] = 1;
        int maxi = 0 ;
        for (int child : adj[n])
        {
            if (child != par)
            {
                level(child, n);
                maxi = max(maxi , lev[child]);
            }
        }
        lev[n]+= maxi ; 
    }



};

int32_t main()
{
    c_p_c();
    int n ;
    cin>>n ; 
    graph g ;
    g.init(n);
    g.build();
    g.level(); 


    return 0;
}
