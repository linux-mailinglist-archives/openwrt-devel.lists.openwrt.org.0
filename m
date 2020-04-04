Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B70A19E4A3
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Apr 2020 13:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hWv+tFLIDCwy7Yjyz25mP4cuO01+tkTCP7cdEARqSAs=; b=oWO3HFxB6SDadh
	DqgqVwVoeBzBPyEStgT+SEp38dTx9pHdyZbh5Cc9+GsLZE19BYTcGNvsE+OIRtCzucJIv/V+WG1nv
	PTD1U7EgWX1xxKkc8quEMvIzIZ3pgdtXuRrVGxDjZwdJsziy/q1SwCMUs0yExICZkSnh9KltOzOJG
	sRsi4s8WnU+bY/h0EsnTCVHQgWSwQ+afWZrbwGYdort626XYB3QPRC6Tq1c/BL6N+kfRO5gpxliJl
	mwJGufUClm4ZqTn/4cyzkJNA7FeecoYvAwCPxRHyeQ6esDrTW/w17FutVA16esAZRodOOVtV6IVKG
	WEJz5MNpr3Xv+1/2N7jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKgby-0002ua-Ho; Sat, 04 Apr 2020 11:05:14 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKgbo-0001Kk-7n
 for openwrt-devel@lists.openwrt.org; Sat, 04 Apr 2020 11:05:06 +0000
Received: from canardo.mork.no (ip6-localhost [IPv6:0:0:0:0:0:0:0:1])
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPS id 034B4to9017281
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
 Sat, 4 Apr 2020 13:04:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1585998296; bh=IcLmuxacHtxFpr7AvXuUoPR0TkVOMAYzvLjIvD74LpE=;
 h=From:To:Cc:Subject:Date:Message-Id:From;
 b=Kp6dvRFA/9G8/o4nLAe+q/TG5aA+nOtvis0A4/tBRheqFu8biCJqbk9Yl/GArueIw
 dgK/zqxrSB0dS2qMR0/lYoV9slwdnR5wpj1Td9I4+gvc553LSCWS2LA/JsGhzNWW/u
 5Z492k+jd0pgXQ9MZ9ZHrO7/8wD4Q9jd/SuR/CXY=
Received: (from bjorn@localhost)
 by canardo.mork.no (8.15.2/8.15.2/Submit) id 034B4tfD017222;
 Sat, 4 Apr 2020 13:04:55 +0200
From: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  4 Apr 2020 13:04:51 +0200
Message-Id: <20200404110451.15445-1-bjorn@mork.no>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on canardo.mork.no
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_040504_801648_921228E6 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] kernel: generic: 5.4: fix mips command line
 parameter patch
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
Cc: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rml4aW5nIGEgYnVpbGQgZXJyb3Igd2hlbiBDT05GSUdfS0VSTkVMX0tFWEVDIGlzIGVuYWJsZWQ6
CgptYWtlWzVdOiBFbnRlcmluZyBkaXJlY3RvcnkgJy9ob21lL2Jqb3JuL3RtcC90bXAtbGVkZS9i
dWlsZF9kaXIvdGFyZ2V0LW1pcHNlbF8yNGtjX211c2wvbGludXgtcmFtaXBzX210NzYyMS9saW51
eC01LjQuMjgnCiAgQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gKICBDQUxMICAgIHNj
cmlwdHMvYXRvbWljL2NoZWNrLWF0b21pY3Muc2gKICBDSEsgICAgIGluY2x1ZGUvZ2VuZXJhdGVk
L2NvbXBpbGUuaAogIENDICAgICAgYXJjaC9taXBzL2tlcm5lbC9tYWNoaW5lX2tleGVjLm8KYXJj
aC9taXBzL2tlcm5lbC9tYWNoaW5lX2tleGVjLmM6IEluIGZ1bmN0aW9uICdrZXhlY19ub25ib290
X2NwdV9qdW1wJzoKYXJjaC9taXBzL2tlcm5lbC9tYWNoaW5lX2tleGVjLmM6MjY4OjI3OiBlcnJv
cjogJ3JlbG9jYXRlX25ld19rZXJuZWxfc2l6ZScgdW5kZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRo
aXMgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4gJ2tleGVjX3JlbG9jYXRlX25ld19rZXJuZWxfZW5k
Jz8KICAgICAgcmVib290X2NvZGVfYnVmZmVyICsgcmVsb2NhdGVfbmV3X2tlcm5lbF9zaXplKTsK
ICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CiAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGtleGVjX3JlbG9jYXRlX25ld19rZXJuZWxfZW5kCmFyY2gv
bWlwcy9rZXJuZWwvbWFjaGluZV9rZXhlYy5jOjI2ODoyNzogbm90ZTogZWFjaCB1bmRlY2xhcmVk
IGlkZW50aWZpZXIgaXMgcmVwb3J0ZWQgb25seSBvbmNlIGZvciBlYWNoIGZ1bmN0aW9uIGl0IGFw
cGVhcnMgaW4KYXJjaC9taXBzL2tlcm5lbC9tYWNoaW5lX2tleGVjLmM6IEluIGZ1bmN0aW9uICdr
ZXhlY19yZWJvb3QnOgphcmNoL21pcHMva2VybmVsL21hY2hpbmVfa2V4ZWMuYzozMDY6Mjc6IGVy
cm9yOiAncmVsb2NhdGVfbmV3X2tlcm5lbF9zaXplJyB1bmRlY2xhcmVkIChmaXJzdCB1c2UgaW4g
dGhpcyBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiAna2V4ZWNfcmVsb2NhdGVfbmV3X2tlcm5lbF9l
bmQnPwogICAgICByZWJvb3RfY29kZV9idWZmZXIgKyByZWxvY2F0ZV9uZXdfa2VybmVsX3NpemUp
OwogICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KICAg
ICAgICAgICAgICAgICAgICAgICAgICAga2V4ZWNfcmVsb2NhdGVfbmV3X2tlcm5lbF9lbmQKbWFr
ZVs3XTogKioqIFtzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI2NjogYXJjaC9taXBzL2tlcm5lbC9t
YWNoaW5lX2tleGVjLm9dIEVycm9yIDEKClNpZ25lZC1vZmYtYnk6IEJqw7hybiBNb3JrIDxiam9y
bkBtb3JrLm5vPgotLS0KIC4uLnB0LWNvbW1hbmQtbGluZS1wYXJhbWV0ZXJzLWZyb20tdXNlcnMu
cGF0Y2ggfCAxOCArKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy01LjQvMzMw
LU1JUFMta2V4ZWMtQWNjZXB0LWNvbW1hbmQtbGluZS1wYXJhbWV0ZXJzLWZyb20tdXNlcnMucGF0
Y2ggYi90YXJnZXQvbGludXgvZ2VuZXJpYy9wZW5kaW5nLTUuNC8zMzAtTUlQUy1rZXhlYy1BY2Nl
cHQtY29tbWFuZC1saW5lLXBhcmFtZXRlcnMtZnJvbS11c2Vycy5wYXRjaAppbmRleCBhMTgyNjg0
YzE2ZTMuLjI4MDhjOTUzMjI5NiAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVu
ZGluZy01LjQvMzMwLU1JUFMta2V4ZWMtQWNjZXB0LWNvbW1hbmQtbGluZS1wYXJhbWV0ZXJzLWZy
b20tdXNlcnMucGF0Y2gKKysrIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy01LjQvMzMw
LU1JUFMta2V4ZWMtQWNjZXB0LWNvbW1hbmQtbGluZS1wYXJhbWV0ZXJzLWZyb20tdXNlcnMucGF0
Y2gKQEAgLTE1MCw2ICsxNTAsMjQgQEAgU2lnbmVkLW9mZi1ieTogWW91c29uZyBaaG91IDx5c3po
b3U0dGVjaEBnbWFpbC5jb20+CiAgCiAgCWlmIChfbWFjaGluZV9rZXhlY19wcmVwYXJlKQogIAkJ
cmV0dXJuIF9tYWNoaW5lX2tleGVjX3ByZXBhcmUoa2ltYWdlKTsKK0BAIC0xNjEsNyArMjY1LDcg
QEAgbWFjaGluZV9jcmFzaF9zaHV0ZG93bihzdHJ1Y3QgcHRfcmVncyAqcgorIHZvaWQga2V4ZWNf
bm9uYm9vdF9jcHVfanVtcCh2b2lkKQorIHsKKyAJbG9jYWxfZmx1c2hfaWNhY2hlX3JhbmdlKCh1
bnNpZ25lZCBsb25nKXJlbG9jYXRlZF9rZXhlY19zbXBfd2FpdCwKKy0JCQkJIHJlYm9vdF9jb2Rl
X2J1ZmZlciArIHJlbG9jYXRlX25ld19rZXJuZWxfc2l6ZSk7CisrCQkJCSByZWJvb3RfY29kZV9i
dWZmZXIgKyBLRVhFQ19SRUxPQ0FURV9ORVdfS0VSTkVMX1NJWkUpOworIAorIAlyZWxvY2F0ZWRf
a2V4ZWNfc21wX3dhaXQoTlVMTCk7CisgfQorQEAgLTE5OSw3ICszMDMsNyBAQCB2b2lkIGtleGVj
X3JlYm9vdCh2b2lkKQorIAkgKiBtYWNoaW5lX2tleGVjKCkgQ1BVLgorIAkgKi8KKyAJbG9jYWxf
Zmx1c2hfaWNhY2hlX3JhbmdlKHJlYm9vdF9jb2RlX2J1ZmZlciwKKy0JCQkJIHJlYm9vdF9jb2Rl
X2J1ZmZlciArIHJlbG9jYXRlX25ld19rZXJuZWxfc2l6ZSk7CisrCQkJCSByZWJvb3RfY29kZV9i
dWZmZXIgKyBLRVhFQ19SRUxPQ0FURV9ORVdfS0VSTkVMX1NJWkUpOworIAorIAlkb19rZXhlYyA9
ICh2b2lkICopcmVib290X2NvZGVfYnVmZmVyOworIAlkb19rZXhlYygpOwogQEAgLTIxMiwxMCAr
MzE2LDEyIEBAIG1hY2hpbmVfa2V4ZWMoc3RydWN0IGtpbWFnZSAqaW1hZ2UpCiAgCXVuc2lnbmVk
IGxvbmcgKnB0cjsKICAKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK
