Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8868D10258B
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 14:37:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cR6bQ6XtTDhueAQylh85RyzZvBsi5t5uatvS0NgeENY=; b=rJr1KGKaj+JNWo
	Qhz6ukKyMl+e7dwcaamXQ7Rc7mp2bY9LNCeS1vKJGCVW9OQVo0akxfiSAiaoAUIRGJ3+YR7U0hpFC
	0lstaqCYE746TMujAxMPRveJmSJ6V5jewGxxYwbCgQKVssddwz6e4TFTqClJi4GJLUbhfHgZjbocu
	RpdYmCru0mz+0Gcpdo5zb4FZ+GcTaKOPsi0rlJYQ+1qx+LE2gmGFKluCYwaH8gG3vDSf0BsK2gCS5
	dAontDzZguCf9lmIn8MijMxlW+Zc+o986aN65nYYKD7CaSO1+783JshZ+fg9HuNrdKyonjRLkdTb6
	KvJCVAy7vmkky3ZfmyQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX3hO-0007kl-FR; Tue, 19 Nov 2019 13:37:42 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX3hH-0007jq-4C
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 13:37:37 +0000
Received: from canardo.mork.no (ip6-localhost [IPv6:0:0:0:0:0:0:0:1])
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPS id xAJDbTPW009709
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
 Tue, 19 Nov 2019 14:37:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1574170649; bh=dNS9bkB2Q8KIfua/V4og3mkyC7ZxUxTbBsYZKjuG9Ws=;
 h=From:To:Cc:Subject:Date:Message-Id:From;
 b=G/h/w2REvwvojwlCxV6ysZ/FWOqMN4dPDsP1qmiwg81lCZlZS6AuFa6imUWO70YVq
 43IjbDJtcM7/iEnBNhk54cBtSxS6MUGlEPolxOvAZBG4RMrRaLlsez+bZMv21tbOhu
 qXI4qLNYhz37gkIeYzNZTZy9vwZhwqoMoVlig+RU=
Received: (from bjorn@localhost)
 by canardo.mork.no (8.15.2/8.15.2/Submit) id xAJDbSjI009706;
 Tue, 19 Nov 2019 14:37:28 +0100
From: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
To: Henryk Heisig <hyniu@o2.pl>
Date: Tue, 19 Nov 2019 14:37:24 +0100
Message-Id: <20191119133724.9663-1-bjorn@mork.no>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on canardo.mork.no
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_053735_517924_5FEEC11B 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] adb: fix for SuperSpeed devices
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
Cc: openwrt-devel@lists.openwrt.org,
 =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlIFVTQiBkZXNjcmlwdG9yIHBhcnNpbmcgaW4gYWRiIGZhaWxzIHRvIGRldGVjdCBTdXBlclNw
ZWVkIGRldmljZXMKYmVjYXVzZSBvZiB0aGUgU3VwZXJTcGVlZCBFbmRwb2ludCBDb21wYW5pb24g
RGVzY3JpcHRvci4gIFRoaXMKY2hlcnJ5LXBpY2tzIHRoZSB1cHN0cmVhbSBmaXggZm9yIHRoZSBw
cm9ibGVtLgoKVW5mb3J0dW5hdGVseSB0aGVyZSBuZXZlciB3ZXJlIGEgcmVsZWFzZSB3aXRoIHRo
aXMgZml4IGJlZm9yZSB0aGUKY29udmVyc2lvbiB0byBDKyssIHNvIHVwZ3JhZGluZyB0byBhIG5l
d2VyIHZlcnNpb24gaXNuJ3QgYW4gb3B0aW9uLgoKVGhpcyBtYWtlcyBhZGIgd29yayB3aXRoIFN1
cGVyU3BlZWQgZGV2aWNlcyBsaWtlIHRoZSBTaWVycmEgV2lyZWxlc3MKRU03NTY1LiAgVGVzdGVk
IGFuZCB2ZXJpZmllZC4KClNpZ25lZC1vZmYtYnk6IEJqw7hybiBNb3JrIDxiam9ybkBtb3JrLm5v
PgotLS0KIHBhY2thZ2UvdXRpbHMvYWRiL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICB8ICAy
ICstCiAuLi4vMDIwLWNoZXJyeS1waWNrZWQtc3VwZXJzcGVlZC1maXgucGF0Y2ggICAgfCA0NCAr
KysrKysrKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDQ1IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBwYWNrYWdlL3V0aWxzL2FkYi9wYXRjaGVz
LzAyMC1jaGVycnktcGlja2VkLXN1cGVyc3BlZWQtZml4LnBhdGNoCgpkaWZmIC0tZ2l0IGEvcGFj
a2FnZS91dGlscy9hZGIvTWFrZWZpbGUgYi9wYWNrYWdlL3V0aWxzL2FkYi9NYWtlZmlsZQppbmRl
eCA3YmU4ZWU5YTFjZWUuLjA0ODJhNDBkYTE1YiAxMDA2NDQKLS0tIGEvcGFja2FnZS91dGlscy9h
ZGIvTWFrZWZpbGUKKysrIGIvcGFja2FnZS91dGlscy9hZGIvTWFrZWZpbGUKQEAgLTMsNyArMyw3
IEBAIGluY2x1ZGUgJChUT1BESVIpL3J1bGVzLm1rCiAKIFBLR19OQU1FOj1hZGIKIFBLR19WRVJT
SU9OOj1hbmRyb2lkLjUuMC4yX3IxCi1QS0dfUkVMRUFTRTo9MgorUEtHX1JFTEVBU0U6PTMKIAog
UEtHX1NPVVJDRV9QUk9UTzo9Z2l0CiBQS0dfU09VUkNFX1VSTDo9aHR0cHM6Ly9hbmRyb2lkLmdv
b2dsZXNvdXJjZS5jb20vcGxhdGZvcm0vc3lzdGVtL2NvcmUKZGlmZiAtLWdpdCBhL3BhY2thZ2Uv
dXRpbHMvYWRiL3BhdGNoZXMvMDIwLWNoZXJyeS1waWNrZWQtc3VwZXJzcGVlZC1maXgucGF0Y2gg
Yi9wYWNrYWdlL3V0aWxzL2FkYi9wYXRjaGVzLzAyMC1jaGVycnktcGlja2VkLXN1cGVyc3BlZWQt
Zml4LnBhdGNoCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uNTE5MmRm
YjkzNzA2Ci0tLSAvZGV2L251bGwKKysrIGIvcGFja2FnZS91dGlscy9hZGIvcGF0Y2hlcy8wMjAt
Y2hlcnJ5LXBpY2tlZC1zdXBlcnNwZWVkLWZpeC5wYXRjaApAQCAtMCwwICsxLDQ0IEBACitGcm9t
IDU4YjAxZTAxODc1ZTJmNmFlNTkzZGVkMTk3NDMwYmMyMzcxM2RkMGEgTW9uIFNlcCAxNyAwMDow
MDowMCAyMDAxCitGcm9tOiBJbmdvIFJvaGxvZmYgPGx1bmRyaWxAZ214LmRlPgorRGF0ZTogRnJp
LCAxNiBNYXkgMjAxNCAyMTo1MTo0MSArMDIwMAorU3ViamVjdDogW1BBVENIXSBBREIgb24gbGlu
dXg6IEhhbmRsZSBVU0IgU3VwZXJTcGVlZCBleHRyYSBEZXNjcmlwdG9ycworCitVbmRlciBMaW51
eCwgQURCIG1hbnVhbGx5IHBhcnNlcyBVU0IgRGVzY3JpcHRvcnMgdG8gY2hlY2sgZm9yCitwb3Nz
aWJsZSBBREIgVVNCIEludGVyZmFjZXMuIFVTQiBEZXZpY2VzIGNvbm5lY3RlZCB3aXRoIFN1cGVy
U3BlZWQKK3dpbGwgZXhoaWJpdCBleHRyYSBVU0IgU3VwZXJTcGVlZCBFbmRwb2ludCBDb21wYW5p
b24gRGVzY3JpcHRvcnMuCitUaGlzIHBhdGNoIGhhbmRsZXMgdGhlc2UgVVNCIFN1cGVyU3BlZWQg
c3BlY2lmaWMgVVNCIERlc2NyaXB0b3JzLgorCitDaGFuZ2UtSWQ6IEljZDFlNWZkZGUwYjMyNGM3
ZGY0ZjkzMzU4MzQ5OWYyYzUyYTkyMmYzCitTaWduZWQtb2ZmLWJ5OiBJbmdvIFJvaGxvZmYgPGx1
bmRyaWxAZ214LmRlPgorLS0tCisgYWRiL3VzYl9saW51eC5jIHwgMTIgKysrKysrKysrKysrCisg
MSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykKKworZGlmZiAtLWdpdCBhL2FkYi91c2Jf
bGludXguYyBiL2FkYi91c2JfbGludXguYworaW5kZXggOGZmNzUzZTQzMzgzLi43OTczY2IwNmM3
ZTkgMTAwNjQ0CistLS0gYS9hZGIvdXNiX2xpbnV4LmMKKysrKyBiL2FkYi91c2JfbGludXguYwor
QEAgLTIzNyw4ICsyMzcsMjAgQEAgc3RhdGljIHZvaWQgZmluZF91c2JfZGV2aWNlKGNvbnN0IGNo
YXIgKmJhc2UsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIGxvb2tzIGxpa2UgQURC
Li4uCisgICAgICAgICAgICAgICAgICAgICAgICAgZXAxID0gKHN0cnVjdCB1c2JfZW5kcG9pbnRf
ZGVzY3JpcHRvciAqKWJ1ZnB0cjsKKyAgICAgICAgICAgICAgICAgICAgICAgICBidWZwdHIgKz0g
VVNCX0RUX0VORFBPSU5UX1NJWkU7CisrICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIEZv
ciBVU0IgMy4wIFN1cGVyU3BlZWQgZGV2aWNlcywgc2tpcCBwb3RlbnRpYWwKKysgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgLy8gVVNCIDMuMCBTdXBlclNwZWVkIEVuZHBvaW50IENvbXBhbmlv
biBkZXNjcmlwdG9yCisrICAgICAgICAgICAgICAgICAgICAgICAgaWYgKGJ1ZnB0cisyIDw9IGRl
dmRlc2MgKyBkZXNjbGVuZ3RoICYmCisrICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJ1ZnB0
clswXSA9PSBVU0JfRFRfU1NfRVBfQ09NUF9TSVpFICYmCisrICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGJ1ZnB0clsxXSA9PSBVU0JfRFRfU1NfRU5EUE9JTlRfQ09NUCkgeworKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBidWZwdHIgKz0gVVNCX0RUX1NTX0VQX0NPTVBfU0laRTsKKysg
ICAgICAgICAgICAgICAgICAgICAgICB9CisgICAgICAgICAgICAgICAgICAgICAgICAgZXAyID0g
KHN0cnVjdCB1c2JfZW5kcG9pbnRfZGVzY3JpcHRvciAqKWJ1ZnB0cjsKKyAgICAgICAgICAgICAg
ICAgICAgICAgICBidWZwdHIgKz0gVVNCX0RUX0VORFBPSU5UX1NJWkU7CisrICAgICAgICAgICAg
ICAgICAgICAgICAgaWYgKGJ1ZnB0cisyIDw9IGRldmRlc2MgKyBkZXNjbGVuZ3RoICYmCisrICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGJ1ZnB0clswXSA9PSBVU0JfRFRfU1NfRVBfQ09NUF9T
SVpFICYmCisrICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJ1ZnB0clsxXSA9PSBVU0JfRFRf
U1NfRU5EUE9JTlRfQ09NUCkgeworKyAgICAgICAgICAgICAgICAgICAgICAgICAgICBidWZwdHIg
Kz0gVVNCX0RUX1NTX0VQX0NPTVBfU0laRTsKKysgICAgICAgICAgICAgICAgICAgICAgICB9Cisg
CisgICAgICAgICAgICAgICAgICAgICAgICAgaWYgKGJ1ZnB0ciA+IGRldmRlc2MgKyBkZXNjbGVu
Z3RoIHx8CisgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVwMS0+Ykxlbmd0aCAhPSBVU0Jf
RFRfRU5EUE9JTlRfU0laRSB8fAorLS0gCisyLjIwLjEKKwotLSAKMi4yMC4xCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
