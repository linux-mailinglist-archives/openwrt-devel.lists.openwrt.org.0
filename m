Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C30D6187386
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 20:39:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gzWp5HyktanCSlz3iHZnkfSAYqYG6F0oYzKX5DXCSDE=; b=kB1JGjMVrHUTwO
	NM4YZPMBDu0RzQfO0QLMuJhNuX8P9KBvKrh4a1qxTWeGG6mfXqu1cZprpI5NkBbbWauSyxd/Bv5E1
	V08FLctu6x5DHTk5EAwJe1h5CTu7BaED+O/rkbIVz9WWPQrYhFVUCpefmJ5BYgvRh7kkIkK26IM8e
	Qx38kmGuUSavF1ki/XZLkEHqhWe4Y6L0GXJZPB3EyaWt5N3sC3uTLzvGv1H4u7L39yAW77PMWFuPx
	k8pdW36/g4OvTggTuMLkmxjYXdGheBhoM/aEotagLgJd2UNjv+j5OevKH75h7MvtAXQ7WNPG0zo4K
	WFtrRlOFUIHHyLcI2KSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDvaT-00062j-Vo; Mon, 16 Mar 2020 19:39:46 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDvaN-00061V-Il
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 19:39:41 +0000
Received: from canardo.mork.no (ip6-localhost [IPv6:0:0:0:0:0:0:0:1])
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPS id 02GJdVUs029222
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
 Mon, 16 Mar 2020 20:39:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1584387572; bh=qE+Tavkp3ht7M03642DJqlf7XfreDvvRQdgt3Ydcdks=;
 h=From:To:Cc:Subject:Date:Message-Id:From;
 b=FDvUB7wW7RUlAJO/um6EqE6Sc/ZbvNf+p1KBa/UuQLHqW0U5MW7JsxY6DsEkel1+3
 ODA60q5WSpOv4NiQDGb46FM6zVRFiEQGzlokwzT9aqFSrjZQZS6BqH/kKwXLEDQXd5
 0NIP+AlJCa5e0VkdZIFA29fUjvBMaJIeP/UzBih0=
Received: (from bjorn@localhost)
 by canardo.mork.no (8.15.2/8.15.2/Submit) id 02GJdVVT029221;
 Mon, 16 Mar 2020 20:39:31 +0100
From: =?UTF-8?q?Bj=C3=B8rn=20Mork?= <bjorn@mork.no>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Mar 2020 20:39:29 +0100
Message-Id: <20200316193929.29174-1-bjorn@mork.no>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on canardo.mork.no
X-Virus-Scanned: clamav-milter 0.102.1 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_123940_136295_9EF46414 
X-CRM114-Status: UNSURE (   6.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] bcm27xx: enable THERMAL_WRITABLE_TRIPS on
 bcm2710 and bcm2711
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

VGhlIFBvRSBoYXQgc3VwcG9ydGVkIG9uIHRoZSBSUGkgM0IrIGFuZCA0QiBjb21lcyB3aXRoIGEg
cmF0aGVyCmxvdWQgZmFuLCB0cmlwcGVkIGluIHR3byBzdGVwcyBieSB0aGUgYnJjbXN0Yl90aGVy
bWFsCnRoZXJtYWxfem9uZSBkcml2ZXIuICBFbmFibGluZyB3cml0YWJsZSB0cmlwIHBvaW50cyBh
bGxvdwp1c2VycyB0byBhZGp1c3QgdGhlIGZhbiB0cmlwIHBvaW50cyBhY2NvcmRpbmcgdG8gdGhl
aXIKcHJlZmVycmVkIHRlbXAvbm9pc2UgcmF0aW8uCgpUaGlzIHNldHRpbmcgaXMgZW5hYmxlZCBv
biBtb3N0IG90aGVyIHRhcmdldHMgd2l0aCBzaW1pbGFyCnRoZXJtYWxfem9uZSBjb250cm9sbGVk
IGNvb2xpbmcgZGV2aWNlcy4KClNpZ25lZC1vZmYtYnk6IEJqw7hybiBNb3JrIDxiam9ybkBtb3Jr
Lm5vPgotLS0KIHRhcmdldC9saW51eC9iY20yN3h4L2JjbTI3MTAvY29uZmlnLTQuMTkgfCAxICsK
IHRhcmdldC9saW51eC9iY20yN3h4L2JjbTI3MTAvY29uZmlnLTUuNCAgfCAxICsKIHRhcmdldC9s
aW51eC9iY20yN3h4L2JjbTI3MTEvY29uZmlnLTQuMTkgfCAxICsKIHRhcmdldC9saW51eC9iY20y
N3h4L2JjbTI3MTEvY29uZmlnLTUuNCAgfCAxICsKIDQgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2JjbTI3eHgvYmNtMjcxMC9jb25maWct
NC4xOSBiL3RhcmdldC9saW51eC9iY20yN3h4L2JjbTI3MTAvY29uZmlnLTQuMTkKaW5kZXggOTlj
OTg1OTY1MjUwLi44MGNkMTY3MjgzZWEgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9iY20yN3h4
L2JjbTI3MTAvY29uZmlnLTQuMTkKKysrIGIvdGFyZ2V0L2xpbnV4L2JjbTI3eHgvYmNtMjcxMC9j
b25maWctNC4xOQpAQCAtNTQyLDYgKzU0Miw3IEBAIENPTkZJR19USEVSTUFMX0RFRkFVTFRfR09W
X1NURVBfV0lTRT15CiBDT05GSUdfVEhFUk1BTF9FTUVSR0VOQ1lfUE9XRVJPRkZfREVMQVlfTVM9
MAogQ09ORklHX1RIRVJNQUxfR09WX1NURVBfV0lTRT15CiBDT05GSUdfVEhFUk1BTF9PRj15CitD
T05GSUdfVEhFUk1BTF9XUklUQUJMRV9UUklQUz15CiBDT05GSUdfVEhSRUFEX0lORk9fSU5fVEFT
Sz15CiBDT05GSUdfVElDS19DUFVfQUNDT1VOVElORz15CiBDT05GSUdfVElNRVJfT0Y9eQpkaWZm
IC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2JjbTI3eHgvYmNtMjcxMC9jb25maWctNS40IGIvdGFyZ2V0
L2xpbnV4L2JjbTI3eHgvYmNtMjcxMC9jb25maWctNS40CmluZGV4IDc1MjdjM2ZkZDk2MS4uY2M3
ZTQ1NzdlYTA3IDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvYmNtMjd4eC9iY20yNzEwL2NvbmZp
Zy01LjQKKysrIGIvdGFyZ2V0L2xpbnV4L2JjbTI3eHgvYmNtMjcxMC9jb25maWctNS40CkBAIC01
ODMsNiArNTgzLDcgQEAgQ09ORklHX1RIRVJNQUxfREVGQVVMVF9HT1ZfU1RFUF9XSVNFPXkKIENP
TkZJR19USEVSTUFMX0VNRVJHRU5DWV9QT1dFUk9GRl9ERUxBWV9NUz0wCiBDT05GSUdfVEhFUk1B
TF9HT1ZfU1RFUF9XSVNFPXkKIENPTkZJR19USEVSTUFMX09GPXkKK0NPTkZJR19USEVSTUFMX1dS
SVRBQkxFX1RSSVBTPXkKIENPTkZJR19USFJFQURfSU5GT19JTl9UQVNLPXkKIENPTkZJR19USUNL
X0NQVV9BQ0NPVU5USU5HPXkKIENPTkZJR19USU1FUl9PRj15CmRpZmYgLS1naXQgYS90YXJnZXQv
bGludXgvYmNtMjd4eC9iY20yNzExL2NvbmZpZy00LjE5IGIvdGFyZ2V0L2xpbnV4L2JjbTI3eHgv
YmNtMjcxMS9jb25maWctNC4xOQppbmRleCBkOGE1NjgxZjA0MTguLjUwY2YzNDQ5OTRiYyAxMDA2
NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2JjbTI3eHgvYmNtMjcxMS9jb25maWctNC4xOQorKysgYi90
YXJnZXQvbGludXgvYmNtMjd4eC9iY20yNzExL2NvbmZpZy00LjE5CkBAIC01NTEsNiArNTUxLDcg
QEAgQ09ORklHX1RIRVJNQUxfREVGQVVMVF9HT1ZfU1RFUF9XSVNFPXkKIENPTkZJR19USEVSTUFM
X0VNRVJHRU5DWV9QT1dFUk9GRl9ERUxBWV9NUz0wCiBDT05GSUdfVEhFUk1BTF9HT1ZfU1RFUF9X
SVNFPXkKIENPTkZJR19USEVSTUFMX09GPXkKK0NPTkZJR19USEVSTUFMX1dSSVRBQkxFX1RSSVBT
PXkKIENPTkZJR19USFJFQURfSU5GT19JTl9UQVNLPXkKIENPTkZJR19USUNLX0NQVV9BQ0NPVU5U
SU5HPXkKIENPTkZJR19USU1FUl9PRj15CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYmNtMjd4
eC9iY20yNzExL2NvbmZpZy01LjQgYi90YXJnZXQvbGludXgvYmNtMjd4eC9iY20yNzExL2NvbmZp
Zy01LjQKaW5kZXggYTgxM2ViNTg2Y2RkLi5mOWI1ODVmOTg3YTQgMTAwNjQ0Ci0tLSBhL3Rhcmdl
dC9saW51eC9iY20yN3h4L2JjbTI3MTEvY29uZmlnLTUuNAorKysgYi90YXJnZXQvbGludXgvYmNt
Mjd4eC9iY20yNzExL2NvbmZpZy01LjQKQEAgLTU5NCw2ICs1OTQsNyBAQCBDT05GSUdfVEhFUk1B
TF9ERUZBVUxUX0dPVl9TVEVQX1dJU0U9eQogQ09ORklHX1RIRVJNQUxfRU1FUkdFTkNZX1BPV0VS
T0ZGX0RFTEFZX01TPTAKIENPTkZJR19USEVSTUFMX0dPVl9TVEVQX1dJU0U9eQogQ09ORklHX1RI
RVJNQUxfT0Y9eQorQ09ORklHX1RIRVJNQUxfV1JJVEFCTEVfVFJJUFM9eQogQ09ORklHX1RIUkVB
RF9JTkZPX0lOX1RBU0s9eQogQ09ORklHX1RJQ0tfQ1BVX0FDQ09VTlRJTkc9eQogQ09ORklHX1RJ
TUVSX09GPXkKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
