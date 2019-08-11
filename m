Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD6C8917B
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 13:00:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=adDrLBK4vpLO40Ia/9zWA1QM1xpmAi061e4RNoWUXE4=; b=H8Tm1f8xW0ybwp
	RFqOBznielkc+0TxV+xYP0pZq4sPpSqi6w3l0VR4zyDPyz9s3N3LJ/dPdaywPxQMA3g5VreMnolPN
	1iQ5UolX8xP2c0H0vI1JH8V7jp33oTH1Tr4zhlMOalX/6zHjDNdh0cEIeiFS9c8LLGt/pXzEoaFsN
	QSupnVYa0sbeV1osBZP30lnoWdoeaSkp8WG6Rp3ZQia+WRy4JVijnN1mCNSgRU/gSVCu8LGlNDz41
	XdZ61rnkhk/vdOXOyVY3yhYSurGX2acc3g0rcMZjTthLDuz4pyTApNcMii1U/uiOXbQgsbmX9Dfs6
	3HP6Z+MU8eDOTvF0k8Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwla5-0001HC-0H; Sun, 11 Aug 2019 11:00:09 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwlZu-0001GL-82
 for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 11:00:00 +0000
Received: from p4fcf952c.dip0.t-ipconnect.de ([79.207.149.44]
 helo=[192.168.2.103]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1hwlZp-0006H8-Jn; Sun, 11 Aug 2019 12:59:53 +0200
To: openwrt-devel@lists.openwrt.org
References: <2f56d90d-39bf-7f63-0676-e0856e6d9f15@birger-koblitz.de>
 <75e48acf-8bfa-5101-3f9a-02ae2cc43c0a@kresin.me>
 <de6aa12b-8e9d-413c-7577-16b4d400f725@gmail.com>
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
Message-ID: <eb294211-eeea-c830-ddf5-77ee9a279626@birger-koblitz.de>
Date: Sun, 11 Aug 2019 12:59:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <de6aa12b-8e9d-413c-7577-16b4d400f725@gmail.com>
Content-Language: en-US
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1565521198;
 9b893afc; 
X-HE-SMSGID: 1hwlZp-0006H8-Jn
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_035958_432458_F8D0419F 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: use gpio_hog instead of
 gpio-export
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
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

RGVhciBNYXRoaWFzIGFuZCBQaW90ciwKCnRoYW5rIHlvdSBmb3IgeW91ciBjb21tZW50cy4gSSBo
YWQgaW5jb3JyZWN0bHkgYXNzdW1lZCB0aGF0IGEgZ3Bpb19ob2cKY291bGQgc3RpbGwgYmUgc3dp
dGNoZWQgb24vb2ZmIGZyb20gdXNlciBzcGFjZSBhbmQgdGhhdCB0aGUgb25seSB0aGluZwpub3Qg
cG9zc2libGUgd2FzIGNoYW5naW5nIHRoZSBkaXJlY3Rpb24uCgpJJ2xsIGdvIHRocm91Z2ggdGhl
IHBhdGNoZXMgYW5kIHJlbW92ZSBhbnl0aGluZyB0aGF0IHNvdW5kcyBsaWtlIGl0Cm1pZ2h0IG5l
ZWQgdXNlciBzcGFjZSBjb25maWd1cmF0aW9uIChpLmUuIG5vdCBwb3dlciB0aGUgVVNCIGJ1cyBv
ciB0aGUKbGlrZSkuCgpJcyBhbnlvbmUgd29ya2luZyBvbiBjb252ZXJ0aW5nIHRoZSB1c2UtY2Fz
ZXMgd2hpY2ggcmVxdWlyZSB1c2VyIHNwYWNlCnN3aXRjaGluZyB0byBsaWJncGlvZCBvciBhbnkg
b3RoZXIgc29sdXRpb24/CgpDaGVlcnMsCgrCoCBCaXJnZXIKCgpPbiAxMS4wOC4xOSAxMjowNiwg
UGlvdHIgRHltYWN6IHdyb3RlOgo+IEhpIE1hdGhpYXMsIEJpcmdlciwKPgo+IE9uIDExLjA4LjIw
MTkgMTE6MzYsIE1hdGhpYXMgS3Jlc2luIHdyb3RlOgo+PiAwMi8wOC8yMDE5IDExOjU4LCBCaXJn
ZXIgS29ibGl0ejoKPj4+IHJhbWlwczogdXNlIGdwaW9faG9nIGluc3RlYWQgb2YgZ3Bpby1leHBv
cnQKPj4+Cj4+PiBUaGUgYGdwaW8tZXhwb3J0YCBmdW5jdGlvbmFsaXR5IGlzIGEgaGFjayBmb3IK
Pj4+IG1pc3Npbmcga2VybmVsIGZ1bmN0aW9uYWxpdHksIHdoaWNoIHdhcyByZWplY3RlZCBpbiB1
cHN0cmVhbSBrZXJuZWwKPj4+IGxvbmcKPj4+IHRpbWUKPj4+IGFnbywgZm9yIGRldGFpbHMgc2Vl
IHRoaXMgZW1haWwKPj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9vcGVu
d3J0LWRldmVsLzIwMTktRmVicnVhcnkvMDE1NzcyLmh0bWwsCj4+Pgo+Pj4gZGlzY3Vzc2lvbiBp
biBQUiMxMzY2IG9yCj4+PiBodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L3B1bGwv
MTgxNCNpc3N1ZWNvbW1lbnQtNDYyOTQyMDIyLgo+Pj4KPj4+IFRoaXMgcGF0Y2ggY29udmVydHMg
YWxsIHJlbWFpbmluZyByYW1pcHMgLmR0cyhpKSBmaWxlcyB3aGljaCB3ZXJlCj4+PiB1c2luZyBl
eHBvcnQtZ3BpbyBhbmQgbm90IG1ha2luZyB1c2Ugb2YgdGhlIGNoYW5nZS1kaXJlY3Rpb24KPj4+
IGZ1bmN0aW9uYWxpdHkKPj4+IHRvIHVzaW5nIGdwaW9faG9nIGluc3RlYWQKPj4+Cj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBCaXJnZXIgS29ibGl0eiA8bWFpbEBiaXJnZXIta29ibGl0ei5kZT4KPj4+Cj4+
PiAtLS0KPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9kdHMvbXQ3NjIw
YV9hbGZhLW5ldHdvcmtfdHViZS1lNGcuZHRzCj4+PiBiL3RhcmdldC9saW51eC9yYW1pcHMvZHRz
L210NzYyMGFfYWxmYS1uZXR3b3JrX3R1YmUtZTRnLmR0cwo+Pj4gaW5kZXggNDA5N2RjNjE0MC4u
ZWEwZDk4MDFjMSAxMDA2NDQKPj4+IC0tLSBhL3RhcmdldC9saW51eC9yYW1pcHMvZHRzL210NzYy
MGFfYWxmYS1uZXR3b3JrX3R1YmUtZTRnLmR0cwo+Pj4gKysrIGIvdGFyZ2V0L2xpbnV4L3JhbWlw
cy9kdHMvbXQ3NjIwYV9hbGZhLW5ldHdvcmtfdHViZS1lNGcuZHRzCj4+PiBAQCAtMjEsMzkgKzIx
LDYgQEAKPj4+IMKgwqDCoMKgwqAgwqDCoMKgIGJvb3RhcmdzID0gImNvbnNvbGU9dHR5UzAsMTE1
MjAwIjsKPj4+IMKgwqDCoMKgwqAgfTsKPj4+IMKgIC3CoMKgwqAgZ3Bpby1leHBvcnQgewo+Pj4g
LcKgwqDCoCDCoMKgwqAgY29tcGF0aWJsZSA9ICJncGlvLWV4cG9ydCI7Cj4+PiAtwqDCoMKgIMKg
wqDCoCAjc2l6ZS1jZWxscyA9IDwwPjsKPj4+IC0KPj4+IC3CoMKgwqAgwqDCoMKgIG1vZGVtLWVu
YWJsZSB7Cj4+PiAtwqDCoMKgIMKgwqDCoCDCoMKgwqAgZ3Bpby1leHBvcnQsbmFtZSA9ICJtb2Rl
bS1lbmFibGUiOwo+Pj4gLcKgwqDCoCDCoMKgwqAgwqDCoMKgIGdwaW8tZXhwb3J0LG91dHB1dCA9
IDwxPjsKPj4+IC3CoMKgwqAgwqDCoMKgIMKgwqDCoCBncGlvcyA9IDwmZ3BpbzEgMTIgR1BJT19B
Q1RJVkVfSElHSD47Cj4+PiAtwqDCoMKgIMKgwqDCoCB9Owo+Pj4gLQo+Pj4gLcKgwqDCoCDCoMKg
wqAgbW9kZW0tcmYtZW5hYmxlIHsKPj4+IC3CoMKgwqAgwqDCoMKgIMKgwqDCoCBncGlvLWV4cG9y
dCxuYW1lID0gIm1vZGVtLXJmLWVuYWJsZSI7Cj4+PiAtwqDCoMKgIMKgwqDCoCDCoMKgwqAgZ3Bp
by1leHBvcnQsb3V0cHV0ID0gPDE+Owo+Pj4gLcKgwqDCoCDCoMKgwqAgwqDCoMKgIGdwaW9zID0g
PCZncGlvMCAxMiBHUElPX0FDVElWRV9ISUdIPjsKPj4+IC3CoMKgwqAgwqDCoMKgIH07Cj4+PiAt
Cj4+PiAtwqDCoMKgIMKgwqDCoCBzaW0tc2VsZWN0IHsKPj4+IC3CoMKgwqAgwqDCoMKgIMKgwqDC
oCBncGlvLWV4cG9ydCxuYW1lID0gInNpbS1zZWxlY3QiOwo+Pj4gLcKgwqDCoCDCoMKgwqAgwqDC
oMKgIGdwaW8tZXhwb3J0LG91dHB1dCA9IDwwPjsKPj4+IC3CoMKgwqAgwqDCoMKgIMKgwqDCoCBn
cGlvcyA9IDwmZ3BpbzAgMTMgR1BJT19BQ1RJVkVfSElHSD47Cj4+PiAtwqDCoMKgIMKgwqDCoCB9
Owo+Pj4gLQo+Pj4gLcKgwqDCoCDCoMKgwqAgc2ltMS1kZXRlY3Qgewo+Pj4gLcKgwqDCoCDCoMKg
wqAgwqDCoMKgIGdwaW8tZXhwb3J0LG5hbWUgPSAic2ltMS1kZXRlY3QiOwo+Pj4gLcKgwqDCoCDC
oMKgwqAgwqDCoMKgIGdwaW9zID0gPCZncGlvMCA5IEdQSU9fQUNUSVZFX0hJR0g+Owo+Pj4gLcKg
wqDCoCDCoMKgwqAgfTsKPj4+IC0KPj4+IC3CoMKgwqAgwqDCoMKgIHNpbTItZGV0ZWN0IHsKPj4+
IC3CoMKgwqAgwqDCoMKgIMKgwqDCoCBncGlvLWV4cG9ydCxuYW1lID0gInNpbTItZGV0ZWN0IjsK
Pj4+IC3CoMKgwqAgwqDCoMKgIMKgwqDCoCBncGlvcyA9IDwmZ3BpbzIgMSBHUElPX0FDVElWRV9I
SUdIPjsKPj4+IC3CoMKgwqAgwqDCoMKgIH07Cj4+PiAtwqDCoMKgIH07Cj4+PiAtCj4+Cj4+IEhl
eSBCaXJnZXIsCj4+Cj4+IHNpbWlsYXIgdG8gbXkgY29tbWVudCBmb3IgdGhlIGxhbnRpcSB2ZXJz
aW9uLCB0aGlzIGRvZXNuJ3Qgd29yayBhcyB3ZWxsLgo+Pgo+PiBBRkFJUiwgdGhlIFR1YmUgZTRn
IGhhcyB0d28gc2ltIGNhcmQgc2xvdHMgYW5kIHRoZSAic2ltLXNlbGVjdCIgZ3BpbyBpcwo+PiBz
dXBwb3NlZCB0byBiZSB1c2VkIGZyb20gdGhlIHVzZXJzcGFjZSwgdG8gc2VsZWN0IHdoaWNoIHNp
bSBjYXJkIHNsb3QKPj4gc2hvdWxkIGJlIHVzZWQuCj4+Cj4+IElmIHdlIGhvZyB0aGUgZ3Bpbywg
aXQgY2FuJ3QgYmUgbWFuaXB1bGF0ZWQgZnJvbSB0aGUgdXNlcnNwYWNlIGFueW1vcmUuCj4+Cj4+
IEkgaGF2ZW4ndCBoYWQgYSBjbG9zZXIgbG9vayBhdCB0aGUgcGF0Y2guIFRoZXJlIG1pZ2h0IGJl
IHNpbWlsYXIgaXNzdWVzCj4+IGZvciBvdGhlciBib2FyZHMuCj4+Cj4+IEBQaW90ciBjYW4gY29u
ZmlybSB3aGF0IEkgbWlnaHQgdG8gcmVtZW1iZXI/Cj4KPiBZZXMsIHlvdSdyZSBjb3JyZWN0Lgo+
Cj4gQWxzbywgdGhlICJtb2RlbS1lbmFibGUiIHNob3VsZCBiZSBhdmFpbGFibGUgaW4gdXNlciBz
cGFjZSBhcyBpbiBjYXNlCj4gb2Ygc29tZSBtb2RlbXMgKHdpdGhvdXQgIlNJTSBwb3dlciBkb3du
IiBmZWF0dXJlIHN1cHBvcnQpLCBvbmx5IHRoaXMKPiBhcHByb2FjaCB3b3JrcyB3aGVuIGNoYW5n
aW5nIFNJTSBjYXJkcy9zbG90czoKPgo+IHB1dCB0aGUgbW9kZW0gaW4gcmVzZXQgLT4gc3dpdGNo
IFNJTSBzbG90IC0+IGVuYWJsZSBtb2RlbQo+Cj4gKHN0aWxsLCB0aGVyZSBpcyBhIHdheSB0byBw
ZXJmb3JtIG1vZGVtIHJlc2V0IHVzaW5nIEFUIGNvbW1hbmQgYnV0Cj4gSU1ITyBpdCdzIG5vdCBh
cyBjb252ZW5pZW50IGFzIHRvZ2dsaW5nIFBFUlNUIyBwaW4pCj4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
b3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3Jn
L21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
