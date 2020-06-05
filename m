Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BEE1EFBDA
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jun 2020 16:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:From:To:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xCvlZA08OG1y78oGJYPj488eY/dfFXd5r153v+w3I28=; b=dI6N+DfYgX+tfO
	KinVsVgwZlhNV/0/DFa18occDu5IC43SrvV3zq6JFAIMNEwnOF8kkO+yEP1FWvBLlW9/70Li1UVNv
	qQBXL1gca7HIYkb/25rEzu6u2WRSl8VAupNu5bE3n8Gwr2EbRoEvXgqmTs9ASuSC3h5E6ys5zLH7b
	ilSrRn8pSRDiPbBdq87sbvvKUVnc1vCy7jMfWFfkFTz3U3n6vU4H7ExPOB0vXbgHntdIuTnlbNQYh
	Bc90aLhmf0sYzp4i1ZhQKVk7Aw88D+Xn88acOXxUk0l8ya19vBGdW9F/RBAHSKKd9CtzOCK7X3jA4
	Zb5KRmcZhvJ36XqkjrTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhDgf-00015x-3d; Fri, 05 Jun 2020 14:51:13 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhDgZ-00014x-7C
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jun 2020 14:51:09 +0000
Received: from [10.162.174.126] ([80.187.82.126]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MIMXE-1jmk0G0BKm-00EN4W; Fri, 05 Jun 2020 16:50:52 +0200
Date: Fri, 05 Jun 2020 16:50:48 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <20200605143748.28826-1-ynezz@true.cz>
References: <20200605143748.28826-1-ynezz@true.cz>
MIME-Version: 1.0
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
From: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <AF820591-BA50-45AD-B392-011DC86C0EF9@adrianschmutzler.de>
X-Provags-ID: V03:K1:P7AXAsZnBRkC8Nxn2wqhIkBirkNqxsDqDlasp/aNxEb5Lrkza42
 BwPPEtBdMeRoMtCsROa367Oat+mauujn09LZcWSJzyRuHQriD0a5I50WFSpyRmtLipbFfCV
 iiw7/fFXv9Huci9meqPLoKtjDJOzc3xWJbKyVhcE3kqAvXKz+2ku0EGDYGa0nLCVI4uW3DP
 +PvkXrF3H1VANee3aRA8Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:s9oMd2cwksE=:/4En7NpOJGU7kGKJuifNxf
 tKFuBuYlu1p3OKCv9E2HaB4yiOXmsSJJ+IfgeRlTsMMPyWKsqj02oXxVjjmXxuQ7A3MDh4Tmq
 xHLK801PjamDIDSlEKdb3m6mEIkotq9Z6l3VvKjk+5rDqEz93UNzZG53oEMydzXLmOZalz/6G
 NARRodQr6oWBPUeFi7AA+G+AVwY/evN24g/cMQs7XgXmneVsSRM89WLLN37SQ9f/eXVnImRKv
 fPU2gaG4dnBjxMAP4LxKiCsYd6J9JKkHyLi4R51tsCFlcJsaMj4RUyMSzz/P2Q9QVfrdHjTCc
 y+lz5WsbYW2X6SFTb+QmW0NVI7EOUwsIaAiactPC+2FAC6YL1ZMna15dqIPpCypxexKTnT/86
 oBFYw2Q5Dq1x/FcypEx9SchiKVC+k/0utLekSbS0jhN0C8g9kzdTCAvDAx8QSPshW1dCET5+y
 T8Jt1Pzx+sB7Q+Ydn3uae470orgQDKXtNbUhvPry+uWpuzklIf692U3JsRmsUmvZS9a8uhlMY
 YlEI9m00cWEZbYj4kQYVNGscruMD65f9rQcBcgK+DhoBExBcatR8GqlZ5dH+buq529iEfM7mw
 yrcBKTX0Xpzc0S3b8xMSswQPhlZCvUpQqIaLUA+gGqg5vevy4EP7cJGUWtF1s7Iiq3Ch69nOW
 sQQzwuNQKBC9JrusOCOhHEQtVsMwPEhyE0vuh66QVrwUKAYdnfTaox2zpFjmK1hk+6LAU5eGb
 levmHBbgcrX8fznu+Sv72p/l/GxLmWLk3BGnJXZa/I1pJwEQu82fL0CivZnn9ssj6sJHpicQa
 gJPPGok75voEpOvGr6WOpz42QURmhQT9PhMY5mKa82w/ySWPNTToDmZDT6VC1TTAxSOwvpp
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_075107_582791_B7F3C3D9 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: edgerouter-x: fix
 missing wan interface
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
Cc: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>,
 Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

CgpPbiA1IEp1bmUgMjAyMCAxNjozNzo0OCBDRVNULCAiUGV0ciDFoHRldGlhciIgPHluZXp6QHRy
dWUuY3o+IHdyb3RlOgo+Q29tbWl0IDVhY2QxZWQwYmUwZCAoInJhbWlwczogbXQ3NjIxOiBmaXgg
VWJpcXVpdGkgRVItWCBwb3J0cyBuYW1lcyBhbmQKPk1BQyBhZGRyZXNzZXMiKSBkaWRuJ3Qgb25s
eSBjaGFuZ2VkIG5hbWluZywgYnV0IGFsc28gcmVtb3ZlZCBXQU4KPmZ1bmN0aW9uYWxpdHkgZnJv
bSBldGgwIHBvcnQsIHdoaWNoIGlzIG5vdCBkZXNpcmVkLCBzbyBsZXRzIGFkZCBpdAo+YmFjay4K
CkhpIFBldHIsIAoKYXMgZmFyIGFzIEknbSBjb25jZXJuZWQsIHRoaXMgd2FzL2lzIGRlc2lyZWQu
IFRoZXJlIGhhcyBiZWVuIGFuIG9sZGVyIGRpc2N1c3Npb24gb24gdGhlIGxpc3QgYW5kIGEgbW9y
ZSByZWNlbnQgUFIgc2ltaWxhciB0byB3aGF0IHlvdSBkbyBoZXJlOgoKaHR0cHM6Ly9naXRodWIu
Y29tL29wZW53cnQvb3BlbndydC9wdWxsLzI5NjEKCkkgZG8gdGhpbmsgdGhhdCBhbGwtTEFOIGlz
IGNsb3NlciB0byB0aGUgZGVmYXVsdCBjb25maWd1cmF0aW9uLCBhbmQgdGh1cyB3b3VsZCBrZWVw
IGl0LCBidXQgSSBkb24ndCBpbnRlbmQgdG8gcmVwZWF0IHRoZSBkaXNjdXNzaW9uIGEgdGhpcmQg
dGltZS4gCgpTbywgYXMgaW4gdGhlIFBSLCBJIHdvdWxkIG5vdCBtZXJnZSB0aGlzLCBidXQgd29u
J3Qga2VlcCB5b3UgZnJvbSBkb2luZyBpdCBpZiB5b3UgaGF2ZSBhIHN0cm9uZyBwcmVmZXJlbmNl
LiBUaGVyZSBhcmUgbXVjaCBtb3JlIGltcG9ydGFudCB0aGluZ3MgdG8gc3BlbnQgdGltZSBvbiBk
aXNjdXNzaW5nIHRoYW4gdGhpcyA6LSkgCgpCZXN0CgpBZHJpYW4KCgo+Cj5DYzogQ2h1YW5ob25n
IEd1byA8Z2NoOTgxMjEzQGdtYWlsLmNvbT4KPkNjOiBBZHJpYW4gU2NobXV0emxlciA8ZnJlaWZ1
bmtAYWRyaWFuc2NobXV0emxlci5kZT4KPkNjOiBERU5HIFFpbmdmYW5nIDxkZW5ncWY2QG1haWwy
LnN5c3UuZWR1LmNuPgo+Rml4ZXM6IDVhY2QxZWQwYmUwZCAoInJhbWlwczogbXQ3NjIxOiBmaXgg
VWJpcXVpdGkgRVItWCBwb3J0cyBuYW1lcyBhbmQKPk1BQyBhZGRyZXNzZXMiKQo+U2lnbmVkLW9m
Zi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KPi0tLQo+Cj5BcyBpbgo+aHR0cHM6
Ly9vcGVud3J0Lm9yZy90b2gvdWJpcXVpdGkvdWJpcXVpdGlfZWRnZXJvdXRlcl94X2VyLXhfa2Ej
c3dpdGNoX3BvcnRzX2Zvcl92bGFucwo+Cj4gdGFyZ2V0L2xpbnV4L3JhbWlwcy9tdDc2MjEvYmFz
ZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrIHwgMiArLQo+IDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj5kaWZmIC0tZ2l0Cj5hL3RhcmdldC9saW51
eC9yYW1pcHMvbXQ3NjIxL2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yawo+Yi90YXJn
ZXQvbGludXgvcmFtaXBzL210NzYyMS9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsK
PmluZGV4IGJhOWY3ZmI3YjYxMy4uNWIwZjdmZjJjZGVmIDEwMDc1NQo+LS0tIGEvdGFyZ2V0L2xp
bnV4L3JhbWlwcy9tdDc2MjEvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrCj4rKysg
Yi90YXJnZXQvbGludXgvcmFtaXBzL210NzYyMS9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAyX25l
dHdvcmsKPkBAIC00NCw3ICs0NCw3IEBAIHJhbWlwc19zZXR1cF9pbnRlcmZhY2VzKCkKPiAJCXVj
aWRlZl9zZXRfaW50ZXJmYWNlc19sYW5fd2FuICJsYW4yIGxhbjMgbGFuNCBsYW41IiAid2FuIgo+
IAkJOzsKPiAJdWJudCxlZGdlcm91dGVyLXgpCj4tCQl1Y2lkZWZfc2V0X2ludGVyZmFjZV9sYW4g
ImV0aDAgZXRoMSBldGgyIGV0aDMgZXRoNCIKPisJCXVjaWRlZl9zZXRfaW50ZXJmYWNlX2xhbl93
YW4gImV0aDEgZXRoMiBldGgzIGV0aDQiICJldGgwIgo+IAkJOzsKPiAJdWJudCxlZGdlcm91dGVy
LXgtc2ZwKQo+IAkJdWNpZGVmX3NldF9pbnRlcmZhY2VfbGFuICJldGgwIGV0aDEgZXRoMiBldGgz
IGV0aDQgZXRoNSIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
