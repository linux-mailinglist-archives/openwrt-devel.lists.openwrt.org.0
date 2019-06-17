Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E98FE490EC
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Jun 2019 22:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1X3jvLQTnZ2alGKREE/pZnUiFy/lMe5mrXe28qhndd8=; b=TmTjq6QjZ/+QJv
	kQX1lFMbMNT/L3+ZmdFFz1H35TjHwzpaLu29mGwTuU/ShF4KdIGBnmW9flG61ONMDlh4/ufjJi5rO
	mIDs/gOKuJgLUw1HuaiXcVGHg+Yc5KjabA6WqiHGzw/pjShKEsyO/m72o3OIXYkhBt5fI8fP+FCgD
	BXZbpo+6NsGHRmX92OnyJAxKGV5WZHMwdtEvvgDSAX/jn9foj57Ee1kSDcXuiBVaJJ+sXggEfzGTk
	bS2o4eAYQZaVHtNpelso4hxlBcwwpeJexhyazZUqqGG484zXbFvB+tziP6i+KLRP8ix2+RoNxcu03
	7nc4L9J3qbWwrdw8e4zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxwr-0006lO-EL; Mon, 17 Jun 2019 20:09:49 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxwB-0006Hd-9v
 for openwrt-devel@lists.openwrt.org; Mon, 17 Jun 2019 20:09:10 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 1572A4FB4;
 Mon, 17 Jun 2019 22:09:05 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 3ea6c3e8;
 Mon, 17 Jun 2019 22:09:03 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 17 Jun 2019 22:08:52 +0200
Message-Id: <1560802136-4157-3-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560802136-4157-1-git-send-email-ynezz@true.cz>
References: <1560802136-4157-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_130907_514552_F3F35DAE 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/6] scripts/dl_github_archive.py: convert
 to Python 3 with 2-to-3
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

TGV0J3MgY29udmVydCB0aGUgc2NyaXB0IHRvIFB5dGhvbiAzLgoKU2lnbmVkLW9mZi1ieTogUGV0
ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KLS0tCiBzY3JpcHRzL2RsX2dpdGh1Yl9hcmNoaXZl
LnB5IHwgMTAgKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zY3JpcHRzL2RsX2dpdGh1Yl9hcmNoaXZlLnB5IGIv
c2NyaXB0cy9kbF9naXRodWJfYXJjaGl2ZS5weQppbmRleCA0YmI3ZDEzMWJiODMuLjNkMWUwN2U1
YzU1MSAxMDA3NTUKLS0tIGEvc2NyaXB0cy9kbF9naXRodWJfYXJjaGl2ZS5weQorKysgYi9zY3Jp
cHRzL2RsX2dpdGh1Yl9hcmNoaXZlLnB5CkBAIC0xLDQgKzEsNCBAQAotIyEvdXNyL2Jpbi9lbnYg
cHl0aG9uCisjIS91c3IvYmluL2VudiBweXRob24zCiAjCiAjIENvcHlyaWdodCAoYykgMjAxOCBZ
b3Vzb25nIFpob3UgPHlzemhvdTR0ZWNoQGdtYWlsLmNvbT4KICMKQEAgLTIwLDcgKzIwLDcgQEAg
aW1wb3J0IHNzbAogaW1wb3J0IHN1YnByb2Nlc3MKIGltcG9ydCBzeXMKIGltcG9ydCB0aW1lCi1p
bXBvcnQgdXJsbGliMgoraW1wb3J0IHVybGxpYi5yZXF1ZXN0LCB1cmxsaWIuZXJyb3IsIHVybGxp
Yi5wYXJzZQogCiBUTVBESVIgPSBvcy5lbnZpcm9uLmdldCgnVE1QX0RJUicpIG9yICcvdG1wJwog
VE1QRElSX0RMID0gb3MucGF0aC5qb2luKFRNUERJUiwgJ2RsJykKQEAgLTE5NCw3ICsxOTQsNyBA
QCBjbGFzcyBHaXRIdWJDb21taXRUc0NhY2hlKG9iamVjdCk6CiAgICAgICAgICAgICBzZWxmLmNh
Y2hlW2tdID0gKHRzLCB1cGRhdGVkKQogCiAgICAgZGVmIF9jYWNoZV9mbHVzaChzZWxmLCBmb3V0
KToKLSAgICAgICAgY2FjaGUgPSBzb3J0ZWQoc2VsZi5jYWNoZS5pdGVyaXRlbXMoKSwgY21wPWxh
bWJkYSBhLCBiOiBiWzFdWzFdIC0gYVsxXVsxXSkKKyAgICAgICAgY2FjaGUgPSBzb3J0ZWQoaXRl
cihzZWxmLmNhY2hlLml0ZW1zKCkpLCBjbXA9bGFtYmRhIGEsIGI6IGJbMV1bMV0gLSBhWzFdWzFd
KQogICAgICAgICBjYWNoZSA9IGNhY2hlWzpzZWxmLl9fY2FjaGVuXQogICAgICAgICBzZWxmLmNh
Y2hlID0ge30KICAgICAgICAgb3MuZnRydW5jYXRlKGZvdXQuZmlsZW5vKCksIDApCkBAIC0zOTcs
OSArMzk3LDkgQEAgY2xhc3MgRG93bmxvYWRHaXRIdWJUYXJiYWxsKG9iamVjdCk6CiAgICAgICAg
ICAgICAnQWNjZXB0JzogJ2FwcGxpY2F0aW9uL3ZuZC5naXRodWIudjMranNvbicsCiAgICAgICAg
ICAgICAnVXNlci1BZ2VudCc6ICdPcGVuV3J0JywKICAgICAgICAgfQotICAgICAgICByZXEgPSB1
cmxsaWIyLlJlcXVlc3QodXJsLCBoZWFkZXJzPWhlYWRlcnMpCisgICAgICAgIHJlcSA9IHVybGxp
Yi5yZXF1ZXN0LlJlcXVlc3QodXJsLCBoZWFkZXJzPWhlYWRlcnMpCiAgICAgICAgIHNzbGNvbnRl
eHQgPSBzc2wuX2NyZWF0ZV91bnZlcmlmaWVkX2NvbnRleHQoKQotICAgICAgICBmaWxlb2JqID0g
dXJsbGliMi51cmxvcGVuKHJlcSwgY29udGV4dD1zc2xjb250ZXh0KQorICAgICAgICBmaWxlb2Jq
ID0gdXJsbGliLnJlcXVlc3QudXJsb3BlbihyZXEsIGNvbnRleHQ9c3NsY29udGV4dCkKICAgICAg
ICAgcmV0dXJuIGZpbGVvYmoKIAogICAgIGRlZiBfZXJyb3Ioc2VsZiwgbXNnKToKLS0gCjEuOS4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
