Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F39582AC3E
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 May 2019 23:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=15BTa8T0n6Sro0s/ED5kkXAOIUwjUBh7OIjzDMchbeY=; b=ba58Db6owHrELs
	Uby3zRZ2eFxH8gG/aFoZJADxtAc6AfbAg/QkDRpwALucsz+hWDeGFKGrRM5PqlnzXY5EFzrRuw706
	hwKqTG4BruIleW/tyfnBBItJv32Q7pBsbwAK5fmskzfImV7ZmXAveQ83caNDOmeeDhDXYx4YGbDLq
	WUWCvBALNlkYStERmUAuZC6pe3jNQBVWsKKNON9UiNF1HR5msYtnQlk2nbEMf1z/+ZU9BKy6x5VX4
	jFq6jtH9Llt45eWJFuEHa2UKzAUzeRakt2op9E9NcSahz/nL+Aqumv47ch1aieQgw56p2TuxR1hxX
	hj655f4awJKTsSe7vQXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV0Kv-0004KN-Is; Sun, 26 May 2019 21:05:45 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV0Ko-0004Jv-Fv
 for openwrt-devel@lists.openwrt.org; Sun, 26 May 2019 21:05:40 +0000
Received: from 83-215-242-194.bruck.stat.salzburg-online.at ([83.215.242.194]
 helo=[172.30.3.153]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1hV0Kl-000486-M7; Sun, 26 May 2019 23:05:35 +0200
To: openwrt-devel@lists.openwrt.org
References: <03add529-c9ba-6cfe-3ce4-9d209239d675@birger-koblitz.de>
 <20190526192856.1290416d@samsung>
 <4c215f25-2110-2bbd-5557-a18138378133@birger-koblitz.de>
 <20190526224611.222e58d7@samsung>
From: Birger Koblitz <mail@birger-koblitz.de>
Openpgp: preference=signencrypt
Autocrypt: addr=mail@birger-koblitz.de; prefer-encrypt=mutual; keydata=
 mQGiBELb9iURBAD7URWZY2HQ38IvWh1pUBiOJMoMi3/qImwhh2hWCgfVPP2FsKD+84zNqJgi
 bIgCWeiHeyQ5fcUnpnn2aPNwMznRxmwjCfb4a6AUPKjZIETGREaWathA9kVAkIlnrZI16QpY
 cz9gWXenVe2bPTny723pQNhLKNhmTQySjQikSMiSAwCgvLxjtDu3gckDzjmA8qs25c6nxRsE
 ANZI7xZqR7wcvzs5/UxNd43UsAN8NYLaOd7E5jgjfaDUu6fxUgmZmWdM+F1Xkp91a4ZHQpMC
 NSAF+vPWiGEGJLhpNYDME/UhqQMDx95v6VvOiH2n4MC0ReW2YkhSCCP1uXVt2/Z7d7jmNtD9
 G8oRE1e/fdRmDMYsdcqN6DmkoJdGBADrr4sVPd6mywEL8kZVfwwPw1i3xMXk5GiAEHj+awo+
 eFTkS6F0K7IAuixm/qizf8zsUob0TRn4VCmFoyT3fkNLxjbi94g9koVQ2cUTCwmkRZkH3fUR
 /jX5ybnKUKO+jyAL2loVnYcC1I3EVzt0NFNx4siG3uzgfAdBF0bNEXjwOrQxQmlyZ2VyIEtv
 YmxpdHogKHByaXZhdGUpIDxtYWlsQGJpcmdlci1rb2JsaXR6LmRlPohaBBMRAgAaBQJMo3rM
 ApsPBosJCAcDAgSVAggDBJYCAwEACgkQ0SJkb/ufpr4lRQCgukvkUqWZ6FbRa6bPdutUcW08
 PacAn0rBrMyYzdUo/cvD7LTjOBH8eW6RuQENBELb9igQBAD//o2rYN5fVDYLPTWyRJj9di9e
 Cwp3T9s+AnY9R7s6U6MDaLfFSzCwpJZTeYkN8V/n5C2iTIQomUkhrc8v4YMlI71XHs+qoSsu
 lvzjlu9eRHysSWbtmeNjGPRKrJHfQCywifrSgY3xJzteY1Ks9JAnW4QKhZQvgHi920f3KL63
 5wADBQP6AuAqbvBdXAoxLuJmiCojzsqF+J4ZBMFvuXd8md2EYtQV74ZqxbAcDo9ELNh+2VNd
 vnsn05NswHNBpaSnhTNzr0TkNkRRQAhZ8rwNbNh0iVuT4PADlyDkEWdNfBl1MUfs8OyCj1tB
 l2UGeJ+DNp1+X8AiNyGmdEicozb90I7UBVyISQQYEQIACQUCTKN6zAKbDAAKCRDRImRv+5+m
 vg64AJwISUIlauuw6sMaWhGtqGzBc96pAACeKH15f9ssxrnwYSzk1spOsw8ejpM=
Message-ID: <1115da9e-d86c-e402-bca6-4bcdcfeb1e0e@birger-koblitz.de>
Date: Sun, 26 May 2019 23:05:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190526224611.222e58d7@samsung>
Content-Language: en-US
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1558904738;
 73a0b5ad; 
X-HE-SMSGID: 1hV0Kl-000486-M7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_140538_678614_6597FC8A 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] Support for Edimax EW-7476RPC
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDI2LjA1LjE5IDIyOjQ2LCBDZXphcnkgSmFja2lld2ljeiB3cm90ZToKPiBEbmlhIDIwMTkt
MDUtMjYsIG8gZ29kei4gMjI6MTY6MzAKPiBCaXJnZXIgS29ibGl0eiA8bWFpbEBiaXJnZXIta29i
bGl0ei5kZT4gbmFwaXNhxYIoYSk6Cj4KPj4gSGksCj4+Cj4+IE9uIDI2LjA1LjE5IDE5OjI4LCBD
ZXphcnkgSmFja2lld2ljeiB3cm90ZToKPj4+PiArwqDCoMKgwqDCoMKgwqAgdWNpZGVmX3NldF9s
ZWRfbmV0ZGV2ICJsYW4iICJsYW4iICIkYm9hcmRuYW1lOmdyZWVuOmludGVybmV0IiAiZXRoMCIK
Pj4+PiArICAgICAgICA7O8KgwqDCoMKgICAKPj4+IEFsc28gd29ya2luZzoKPj4+Cj4+PiB1Y2lk
ZWZfc2V0X2xlZF9zd2l0Y2ggImxhbiIgImxhbiIgIiRib2FyZG5hbWU6Z3JlZW46bGFuIiAic3dp
dGNoMCIgIjB4MjAiCj4+Pgo+Pj4gKGlmIHlvdSByZW5hbWUgaW50ZXJuZXQgdG8gbGFuKQo+Pj4g
IAo+PiBBcmUgeW91IHN1cmUgYWJvdXQgdGhpcz8gSSByZW5hbWVkIHRoZSBpbnRlcm5ldCB0byBs
YW4sIGJ1dCBvbiB0aGUKPj4gNzQ3NnJwYyB0aGUgbGVkIGRvZXMgbm90IHR1cm4gb246Cj4gT24g
NzQ3OGFjLCB5ZXMsIGknbSBzdXJlLgo+Cj4gcm9vdEBPcGVuV3J0On4jIHN3Y29uZmlnIGRldiBz
d2l0Y2gwIHNob3cgfCBncmVwIHBvcnQKPiAJbGluazogcG9ydDowIGxpbms6ZG93bgo+IAlsaW5r
OiBwb3J0OjEgbGluazpkb3duCj4gCWxpbms6IHBvcnQ6MiBsaW5rOmRvd24KPiAJbGluazogcG9y
dDozIGxpbms6ZG93bgo+IAlsaW5rOiBwb3J0OjQgbGluazpkb3duCj4gCWxpbms6IHBvcnQ6NSBs
aW5rOnVwIHNwZWVkOjEwMDBiYXNlVCBmdWxsLWR1cGxleCAKPiAJbGluazogcG9ydDo2IGxpbms6
dXAgc3BlZWQ6MTAwMGJhc2VUIGZ1bGwtZHVwbGV4IAo+IAlsaW5rOiBwb3J0OjcgbGluazpkb3du
Cj4gcm9vdEBPcGVuV3J0On4jIGNhdCAvc3lzL2NsYXNzL2xlZHMvZXctNzQ3OGFjXDpncmVlblw6
bGFuL3RyaWdnZXIgCj4gbm9uZSBbc3dpdGNoMF0gdGltZXIgZGVmYXVsdC1vbiBuZXRkZXYgcGh5
MHJ4IHBoeTB0eCBwaHkwYXNzb2MgcGh5MHJhZGlvIHBoeTB0cHQgcGh5MXJ4IHBoeTF0eCBwaHkx
YXNzb2MgcGh5MXJhZGlvIAo+IHJvb3RAT3BlbldydDp+IyBjYXQgL3N5cy9jbGFzcy9sZWRzL2V3
LTc0NzhhY1w6Z3JlZW5cOmxhbi9wb3J0X21hc2sgCj4gMHgyMAo+IHJvb3RAT3BlbldydDp+IyAK
CkkgZ2V0OgoKcm9vdEBPcGVuV3J0On4jIGxzIC9zeXMvY2xhc3MvbGVkcy9ldy03NDc2cnBjXDpn
cmVlblw6bGFuLwpicmlnaHRuZXNzwqDCoMKgwqDCoCBkZXZpY2XCoMKgwqDCoMKgwqDCoMKgwqAg
ZGV2aWNlX25hbWXCoMKgwqDCoCBpbnRlcnZhbMKgwqDCoMKgwqDCoMKgCmxpbmvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIG1heF9icmlnaHRuZXNzwqAgcnjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBzdWJzeXN0ZW3CoMKgwqDCoMKgwqAKdHJpZ2dlcsKgwqDCoMKgwqDCoMKgwqAgdHjCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB1ZXZlbnQKCm5vIHBvcnRfbWFzawoKCj4KPj4gU29DOsKgwqAg
TWVkaWFUZWsgTVQ3NjIwYSBAIDU4ME1Iego+PiBSQU06wqDCoCA2NE0gKFdpbmJvbmQgVzk3NTFH
NktCLTI1KQo+PiBGTEFTSDogMTZNQiAoTWFjcm9uaXgpCj4gQXJlIHlvdSBzdXJlPyBPbiB5b3Vy
IGR0czoKPgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cGFydGl0aW9uQDcwMDAwIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gImVkaW1heCx1aW1hZ2UiOwo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGxhYmVsID0gImZpcm13YXJlIjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHgwMDA3MDAwMCAweDAw
NzkwMDAwPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IH07Cj4gVGhpcyBpcyA4TUIKClllcywgeW91IGFyZSByaWdodCwgYWNjb3JkaW5nIHRvIGh0dHA6
Ly93d3cuYWNlbGluay5jb20udHcvRVctNzQ3NlJQQy5odG1sCgoKPgo+IFsgICAgMS4yNzQyNzZd
IHNwaSBzcGkwLjA6IGZvcmNlIHNwaSBtb2RlMwo+IFsgICAgMS4yODI3NzddIG0yNXA4MCBzcGkw
LjA6IG14MjVsNjQwNWQgKDgxOTIgS2J5dGVzKQo+IFsgICAgMS4yOTI2MDFdIDUgZml4ZWQtcGFy
dGl0aW9ucyBwYXJ0aXRpb25zIGZvdW5kIG9uIE1URCBkZXZpY2Ugc3BpMC4wCj4gWyAgICAxLjMw
NTI2Ml0gQ3JlYXRpbmcgNSBNVEQgcGFydGl0aW9ucyBvbiAic3BpMC4wIjoKPgo+Cj4KPj4gSW5z
dGFsbGF0aW9uCj4+IC0tLS0tLS0tLS0tLQo+PiBVcGRhdGUgdGhlIGZhY3RvcnkgaW1hZ2Ugdmlh
IHRoZSB3ZWItaW50ZXJmYWNlcyAoYnkgZGVmYXVsdDoKPj4gMTkyLjE2OC45LjIvMjQpLgo+PiBo
dHRwOi8vMTkyLjE2OC45LjIvaW5kZXguYXNwCj4gT3IgcHVzaCB3cGEgYnV0dG9uIG9uIHBvd2Vy
IG9uIGFuZCBzZW5kIGZpcm13YXJlIHZpYSB0ZnRwIHRvIDE5Mi4xNjguMS42IAo+ICAKPj4gcmFt
aXBzOiBhZGQgTmV0Z2VhciBFVy03NDc4QUMKPj4KPj4gU29DOsKgwqAgTWVkaWFUZWsgTVQ3NjIw
YSBAIDU4ME1Iego+PiBSQU06wqDCoCA2NE0gKFdpbmJvbmQgVzk3NTFHNktCLTI1KQo+PiBGTEFT
SDogMTZNQiAoTWFjcm9uaXgpCj4gOE1CIDopIGluIHZlcnNpb24gc29sZCBpbiBQb2xhbmQuCj4K
PgpVbmZvcnR1bmF0ZWx5IGFsc28gaW4gR2VybWFueSA6KCAuIE90aGVyd2lzZSBJIGxvb2tlZCBp
bnRvIHRoZSBmaXJtd2FyZQpvZiB0aGUgRWRpbWF4IFJFLTExIGFuZCB0aGVyZSB0aGUgbWFnaWMg
Ynl0ZXMgYXJlIFJONzQuIE90aGVyd2lzZSB0aGUKZmlybXdhcmUgbG9va3MgaWRlbnRpY2FsIHRv
IHRoZSBvdGhlciBtb2RlbHMuCgpCaXJnZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK
