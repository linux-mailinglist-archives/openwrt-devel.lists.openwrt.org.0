Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B67491F004A
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jun 2020 21:11:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Le3B+TIViHr1bdryXOvI7uTOGG3nGvd0pn4izazEkfA=; b=Sr8EEG2yDMDH1D
	SBOfdFcqSL2sS6M+pwoiMT+6613pk8nB9K0m6je6yNmRoE1X4YRA8qNeG6N3e2mV0LTFPNLEzwMrG
	17kK52d1Md1fY9g/f8dTlgj+kfstpyiOUvDDbyPiMZ9EKLNIo3uwlv71DW5YEOXBAPcxT/CCis72B
	eycR+/SndpcsxXC5AG9cImdWjcQq/5blqybmvXGP+hjKblZg2amnmIoR/afcrtQAfsBhfvhkPYWZY
	A425BcdeF0LDS3gLiloUcJ1ZWywbbjWCi3hddIpF2ARRS07kgext9HNziTPrwcMHyEzz1bPocon+B
	t4ly/bK4OETT1wr5O/Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhHkO-0005Ua-6Q; Fri, 05 Jun 2020 19:11:20 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhHkH-0005Te-Nf
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jun 2020 19:11:15 +0000
Received: from acer ([188.192.133.27]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MuDoR-1ipah50j0P-00uabc; Fri, 05
 Jun 2020 21:11:06 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Henrique de Moraes Holschuh'" <henrique@nic.br>,
 <openwrt-devel@lists.openwrt.org>
References: <20200605114736.63933-1-freifunk@adrianschmutzler.de>
 <87y2p1u28j.fsf@miraculix.mork.no>
 <c73a7e52-c0b0-d374-22de-69e0524d1315@nic.br>
In-Reply-To: <c73a7e52-c0b0-d374-22de-69e0524d1315@nic.br>
Date: Fri, 5 Jun 2020 21:11:04 +0200
Message-ID: <003501d63b6d$1027b4c0$30771e40$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJz/X9GpFJhthV3LktyWUGwp64e8QJTA4E8AcSbzxmnbiEdYA==
Content-Language: de
X-Provags-ID: V03:K1:wBYdfV+uTzfB/2OkS1jEa2yVFL5gC+gVMr4sZizCHBHLbOme1Bq
 vq4T2KIwWv+YKiFGk+wBte7u/Yko0MDdJ759cFignv48HEvdAPG2IRGMdVR1TJPd2CfyzHw
 Qnjbu5CRCWq0M3Sn+rPfOKnXHp6PjtiSwafJHEV30K5bLIhoHlqZrenG8qUQmkogVmqMa9h
 7SjXftn0NQZTjDnSqdOyQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NOVqE9NR52Q=:382Z5jqySzOJXLoKOu06A2
 8zXXZtDsFjV67FpRwX+wwK2VyGin2jBID7RKaWAM+0ZVVhpjSrquesYEHonAHdNAzskzvl+t0
 4nes7qGbV6PJ3wOf8MHj3f+vTZS0My0IBPkbGSjUFV+NVa/kWT9+PTrFd4PWhC+63lVmwTEOH
 LuQIeQPoqarTmeoQMow0l+peAw8ccX0d8wYcnsxfkT3QexfXEiBm4cfLIJRI+6wa0gaKS8jDq
 vYr3zke0EULwCeqePx30jvjOcitq9aQ3kiS3JHD9tY8jHXJYVzx+8w+fWlIUXNEl04+pBPOH+
 MxliwTNIV+YDcmeD15uGHj/Kmt3J4tPAbTUbQpFfV5oReH/oUTc0xsU13FHLX3RZyfg+nFYb+
 R9IvEH7cJYElRr8/fjacK/q3FerXwznAQchiYL/vcODQAtNc8Iamm4DdXvuwojvENwQBa99XM
 xub2ir/O1sjrFnVwckTYEcTtlgXAi0qKxatNNdUKm1mSH5GG5aJOrZuXZHojOoMIn6bekdGsG
 7pg9g/LIfkQbBW5jXGg7ZD1aBtEsTtTWX7XVg0F2dZB+0wjSlaJxhY3g8dZ9lS8gbjjbrLaA2
 THyv633azPYORwrQjtDEyKSxdh4SyXJ0Z0GDICyfZ/iCXTd2bfOBXGpHKv8YgBLuw+YRPUj1t
 0t9TpbTrJ8aNG0bCdbNJJ8Bl+z/UISw3ei/d7CcQobNWtQhl9KAD8Zl5cpT2TZjipTikQ36qC
 vTXn0/XWNMdaOQ2yxbYos3kRwsRVFWluEmLm6xQ1pUZM07lq+K6A6jxpdJv1Paqd97xE13VYr
 rSubcdgvnDguB+nw3hpFLFa3+pOoQ54U0Y/l5IiKdNliKc81pVnhLZffSIUHz4a4xmtnSUn
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_121114_070628_6A711EB1 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [RFC PATCH] sysupgrade: introduce compatibility
 version for devices
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

SGksCgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogb3BlbndydC1kZXZlbCBb
bWFpbHRvOm9wZW53cnQtZGV2ZWwtYm91bmNlc0BsaXN0cy5vcGVud3J0Lm9yZ10KPiBPbiBCZWhh
bGYgT2YgSGVucmlxdWUgZGUgTW9yYWVzIEhvbHNjaHVoCj4gU2VudDogRnJlaXRhZywgNS4gSnVu
aSAyMDIwIDE1OjUwCj4gVG86IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBTdWJq
ZWN0OiBSZTogW09wZW5XcnQtRGV2ZWxdIFtSRkMgUEFUQ0hdIHN5c3VwZ3JhZGU6IGludHJvZHVj
ZQo+IGNvbXBhdGliaWxpdHkgdmVyc2lvbiBmb3IgZGV2aWNlcwo+IAo+IE9uIDA1LzA2LzIwMjAg
MDk6MjcsIEJqw7hybiBNb3JrIHdyb3RlOgo+ID4gSSB3b25kZXIgaWYgdGhlcmUgbWlnaHQgYmUg
bW9yZSBmbGV4aWJsZSBhbmQgdXNlci1mcmllbmRseSB3YXlzIHRvCj4gPiBoYW5kbGUgdXBncmFk
ZSBpbmNvbXBhdGliaWxpdGllcyBpZiB3ZSBhcmUgYWxsb3dlZCB0byB1c2UKPiA+IGNvZGUvbWV0
YWRhdGEgZnJvbSB0aGUgbmV3IGltYWdlIGluIHRoZSBzeXN1cGdyYWRlIHByb2Nlc3M/ICBJbnN0
ZWFkCj4gPiBvZiBqdXN0IHByb3ZpZGluZyBhIHZlcnNpb24gbnVtYmVyIHdpdGggc29tZSBzaW1w
bGUgc2VtYW50aWNzIGxpa2UgeW91Cj4gPiBkZXNjcmliZSwgdGhlIG5ldyBpbWFnZSBjb3VsZCBw
cm92aWRlIGEgc2NyaXB0IHNuaXBwZXQgb3Igc2ltaWxhcgo+ID4gd2hpY2ggY29kaWZpZXMgYSBt
b3JlIHByZWNpc2UgZGVzY3JpcHRpb24gb2YgdGhlIGluY29tcGF0aWJpbGl0eS4gQW5kCj4gPiBl
dmVuIGEgc29sdXRpb24sIGlmIHRoZXJlIGlzIG9uZS4KPiAKPiBBIG1lc3NhZ2UgKG9yIFVSTD8p
IG1pZ2h0IGJlIG5pY2UsIHllcy4gIFRoYXQncyBub3Qgc29tZXRoaW5nIHdlIGhhdmUgcmlnaHQK
PiBub3cuLi4KPiAKPiA+IEZvciB0aGUgRFNBIGV4YW1wbGUsIHN1Y2ggYSBzY3JpcHQgY291bGQg
KG9wdGlvbmFsbHk/KSBtb3ZlIGFuCj4gPiBpbmNvbXBhdGlibGUgY29uZmlnL25ldHdvcmsgb3V0
IG9mIHRoZSB3YXksIHdoaWxlIGxlYXZpbmcgYWxsIG90aGVyCj4gCj4gVGhhdCdzIHR5cGljYWxs
eSBhIGpvYiBvZmZsb2FkZWQgdG8gL2V0Yy91Y2ktZGVmYXVsdHMvKiBmcm9tIHRoZSBuZXcKPiBp
bWFnZSwgaXNuJ3QgaXQ/ICAgVGhlcmUncyBhIGxvdCBvZiBhcjcxeHggLT4gYXRoNzkgaGFuZGxp
bmcgZG9uZSB0aGF0Cj4gd2F5IGFscmVhZHkuLi4KCldyaXRpbmcgYW4gdWNpLWRlZmF1bHRzIHNj
cmlwdCBpcyBub3QgdGhlIHByb2JsZW0sIGJ1dCBob3cgdG8gZ2V0IHRoZSBkYXRhIGZyb20gdGhl
IE1ha2UgdmFyaWFibGUuCk9mIGNvdXJzZSBpdCB3b3VsZCBiZSBlYXN5IHRvIGp1c3QgaGF2ZSBh
IHVjaS1kZWZhdWx0cyB3aXRoIHRoZSBkZXZpYXRpbmcgdmVyc2lvbnMsIGJ1dCBJIHRyeSB0byBu
b3QgZGVmaW5lIHRoZSBzYW1lIHZhbHVlIHR3aWNlLCBhcyB3ZSB3aWxsIG5lZWQgaXQgaW4gaW1h
Z2UvTWFrZWZpbGUgZm9yIHRoZSBTVVBQT1JURURfREVWSUNFUy4KCj4gCj4gRG93bmdyYWRlcyBh
cmUsIG9mIGNvdXJzZSwgdW5zdXBwb3J0ZWQuICBUaGV5IGNvdWxkIGJlLCBidXQgaXQgd291bGQg
d2FzdGUKCkRvd25ncmFkZSB3aWxsIGZvbGxvdyB0aGUgc2FtZSBydWxlcyBhcyB1cGdyYWRlcywg
SSBkb24ndCB0aGluayB0aGV5IHdpbGwgbmVlZCBzcGVjaWFsIGNvbnNpZGVyYXRpb24gYXQgYWxs
IGhlcmUuCgpCZXN0CgpBZHJpYW4KCj4gcHJlY2lvdXMgZmxhc2gsIGl0IG1ha2VzIG1vcmUgc2Vu
c2UgdG8gd2FybiB1c2VycyB0byBiYWNrdXAgYmVmb3JlaGFuZCBpbgo+IHRoZSBMdUNJIGludGVy
ZmFjZSAoYW5kIG5vdCBtZXNzIHdpdGggc3lzdXBncmFkZSBpdHNlbGYsIHdoaWNoIG5lZWRzIHRv
IGJlCj4gYWJsZSB0byAqKnNhZmVseSoqIHdvcmsgdW5hdHRlbmRlZCBhcyB3ZWxsKS4KPiAKPiAt
LQo+IEhlbnJpcXVlIGRlIE1vcmFlcyBIb2xzY2h1aAo+IAo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
PiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
