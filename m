Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE591D75E6
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 May 2020 13:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MPphFgdnI5oQnBSFgcZ0q/jKd/TiEeaYl1+rEPuTxv4=; b=gmKyRGFt4yp07V
	WjuhBMw+36x9R0VJ6L8W47X52vrkQCHBVobNdy1uwmp3FNERl32QbKB6Y/sUpBWL7Awjcuvhpja53
	MYmjHfZS/PgUj3ozJvMGDNP6B9akO1gQxP6BuVfDqrfchozHZIlCCfSTb8Ewa2gzEIbrOsnGwHLKH
	W/qPRZ0zXVE0QEDPf6M+En8Mjx3O0Z6ZGbPKdDJutC4eVgnVel/fUC3ZUnVAW5J8XXYCIhJmZLxxT
	xMim5eRgc7eeNLHf2Sfc3zhgHV2oiaJxEZqX1d2YJbAvk/WPUcR3zc1jODXCNhuEGwl8q/mqryOEn
	o6/kTwpYO9BG3XtDQaPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jadcY-0005mw-Bs; Mon, 18 May 2020 11:07:46 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jadcN-0005gQ-Qi
 for openwrt-devel@lists.openwrt.org; Mon, 18 May 2020 11:07:37 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 0D735600A8;
 Mon, 18 May 2020 13:07:30 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 0D735600A8
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 0D735600A8
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1589800052; bh=CT7EhljYamJcgBnqJD5M2PVmtUO2hrrdnxxqG3S7Bz4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=c7JCvEQ+9gCKaLk4BHGhWPSpxNiRnE6euHOmXCSWTkgobu7I1GSDkFKOoMRwdDoA5
 CTcS5hJPEUkKmGw0Fw+uOgNC9tbjx7WoYJcP4R7aU7uFTvjz6EeHymkaDaqUrySQSO
 ozcVXcGbCkYZkFWvftNvSHjILZWnPQCb1cSM2hkI=
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 18 May 2020 13:07:30 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 18 May 2020 13:07:12 +0200
Message-Id: <20200518110712.47238-2-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200518110712.47238-1-hacks@slashdirt.org>
References: <20200518110712.47238-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY,UNWANTED_LANGUAGE_BODY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_040736_112679_BD25AE18 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/2] generic: platform/mikrotik:
 disambiguate SPDX-License-Identifier
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
Cc: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SSBtZWFudCBpdCB0byBiZSBHUEwtMi4wLW9ubHksIGFzIGV2aWRlbmNlZCBieSB0aGUgYm9pbGVy
cGxhdGUuCgpTaWduZWQtb2ZmLWJ5OiBUaGliYXV0IFZBUsOITkUgPGhhY2tzQHNsYXNoZGlydC5v
cmc+Ci0tLQogdGFyZ2V0L2xpbnV4L2dlbmVyaWMvZmlsZXMvZHJpdmVycy9wbGF0Zm9ybS9taWty
b3Rpay9yYl9oYXJkY29uZmlnLmMgfCAyICstCiB0YXJnZXQvbGludXgvZ2VuZXJpYy9maWxlcy9k
cml2ZXJzL3BsYXRmb3JtL21pa3JvdGlrL3JvdXRlcmJvb3QuYyAgICB8IDIgKy0KIHRhcmdldC9s
aW51eC9nZW5lcmljL2ZpbGVzL2RyaXZlcnMvcGxhdGZvcm0vbWlrcm90aWsvcm91dGVyYm9vdC5o
ICAgIHwgMiArLQogMyBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvZmlsZXMvZHJpdmVycy9wbGF0
Zm9ybS9taWtyb3Rpay9yYl9oYXJkY29uZmlnLmMgYi90YXJnZXQvbGludXgvZ2VuZXJpYy9maWxl
cy9kcml2ZXJzL3BsYXRmb3JtL21pa3JvdGlrL3JiX2hhcmRjb25maWcuYwppbmRleCA5M2M3MzFh
NWYwLi4yYTA1OWE0ZDI1IDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvZ2VuZXJpYy9maWxlcy9k
cml2ZXJzL3BsYXRmb3JtL21pa3JvdGlrL3JiX2hhcmRjb25maWcuYworKysgYi90YXJnZXQvbGlu
dXgvZ2VuZXJpYy9maWxlcy9kcml2ZXJzL3BsYXRmb3JtL21pa3JvdGlrL3JiX2hhcmRjb25maWcu
YwpAQCAtMSw0ICsxLDQgQEAKLS8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCisv
LyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5CiAvKgogICogRHJpdmVyIGZv
ciBNaWtyb1RpayBSb3V0ZXJCb290IGhhcmQgY29uZmlnLgogICoKZGlmZiAtLWdpdCBhL3Rhcmdl
dC9saW51eC9nZW5lcmljL2ZpbGVzL2RyaXZlcnMvcGxhdGZvcm0vbWlrcm90aWsvcm91dGVyYm9v
dC5jIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvZmlsZXMvZHJpdmVycy9wbGF0Zm9ybS9taWtyb3Rp
ay9yb3V0ZXJib290LmMKaW5kZXggMTcyZGIwMjUzMy4uMzZjYTkwYzFhZCAxMDA2NDQKLS0tIGEv
dGFyZ2V0L2xpbnV4L2dlbmVyaWMvZmlsZXMvZHJpdmVycy9wbGF0Zm9ybS9taWtyb3Rpay9yb3V0
ZXJib290LmMKKysrIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvZmlsZXMvZHJpdmVycy9wbGF0Zm9y
bS9taWtyb3Rpay9yb3V0ZXJib290LmMKQEAgLTEsNCArMSw0IEBACi0vLyBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAt
b25seQogLyoKICAqIERyaXZlciBmb3IgTWlrcm9UaWsgUm91dGVyQm9vdCBmbGFzaCBkYXRhLiBD
b21tb24gcm91dGluZXMuCiAgKgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvZmls
ZXMvZHJpdmVycy9wbGF0Zm9ybS9taWtyb3Rpay9yb3V0ZXJib290LmggYi90YXJnZXQvbGludXgv
Z2VuZXJpYy9maWxlcy9kcml2ZXJzL3BsYXRmb3JtL21pa3JvdGlrL3JvdXRlcmJvb3QuaAppbmRl
eCBkMmNhNDFmYjFiLi5jNzVmNjFlYmJmIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvZ2VuZXJp
Yy9maWxlcy9kcml2ZXJzL3BsYXRmb3JtL21pa3JvdGlrL3JvdXRlcmJvb3QuaAorKysgYi90YXJn
ZXQvbGludXgvZ2VuZXJpYy9maWxlcy9kcml2ZXJzL3BsYXRmb3JtL21pa3JvdGlrL3JvdXRlcmJv
b3QuaApAQCAtMSw0ICsxLDQgQEAKLS8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4w
CisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5CiAvKgogICogQ29tbW9u
IGRlZmluaXRpb25zIGZvciBNaWtyb1RpayBSb3V0ZXJCb290IGRhdGEuCiAgKgotLSAKMi4xMS4w
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
