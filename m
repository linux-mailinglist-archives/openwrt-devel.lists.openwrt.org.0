Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9891D1B0CDA
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 15:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/jgleRTtTbgOziby3SLK44JBLdOHhne6/whb/m83I8=; b=lBlS6qNW2eHsXD
	x8MNy7HiPJy9NGg3GOGtPgQz1WgLjuBimgruNAmNsmyUhqORaDI7te7K2a2eYeu7UC4VDZ9b0fbnm
	qeTA80UxTdBdpjWjk1/bRGpq/cm1WG5N78yVwX7DUzYXpoDUptllKyl7Mxs2XLm4VEQ+PBydKoR8E
	hG6QVhdG4LUkhrFROPrloRyuoifxYwiGFezHuO2K0uQX7TwMCR0zCM+5sQC0TGCqsrbu9CJByGBLP
	xzYcVSX6KC8h5JP9IBEPONCIdKVHj+1LVOApKKZKm/yJgP9j8Lsp8OUv/O5lf140gAW4un0wrzkMv
	WF9zh5z1KSfFDLt1xBOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWcZ-0003G2-OA; Mon, 20 Apr 2020 13:37:59 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWaX-0000u0-AX
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 13:35:56 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 0703D60335;
 Mon, 20 Apr 2020 15:35:48 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 0703D60335
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 0703D60335
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587389750; bh=5igY73SLKACLkTXdhg2YPmBUcybp9W9Vu0LwOCG1HSM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JfvEentc60STJYpe1pM6CQ8lceLQmPPDagwRW/IWK8IDPS1OFBp2xGVFGYFiO8Eex
 Z30krS3qZpKIP6N05+alW+jq+b9bVNACXcJUXEb4+shEoaj9OlsIgvHq86yVECybjZ
 CrgJwFv2bTpW3qcn0VmaJNSQ5w+721tjlxXliq0g=
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 15:35:48 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 15:34:59 +0200
Message-Id: <20200420133503.18700-11-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200420133503.18700-1-hacks@slashdirt.org>
References: <20200420133503.18700-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY shortcircuit=no autolearn=no autolearn_force=no
 version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_063555_093784_5C84D45B 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 10/14] ar71xx/mikrotik: ath10k: use new
 sysfs driver
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
Cc: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>,
 koen.vandeputte@ncentric.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RmV0Y2ggYXRoMTBrIGNhbGlicmF0aW9uIGRhdGEgZnJvbSBuZXcgbWlrcm90aWsgc3lzZnMgZHJp
dmVyCgpTaWduZWQtb2ZmLWJ5OiBUaGliYXV0IFZBUsOITkUgPGhhY2tzQHNsYXNoZGlydC5vcmc+
Ci0tLQogLi4uL2xpbnV4L2FyNzF4eC9iYXNlLWZpbGVzL2V0Yy9ob3RwbHVnLmQvZmlybXdhcmUv
MTEtYXRoMTBrLWNhbGRhdGEgIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9hcjcxeHgvYmFz
ZS1maWxlcy9ldGMvaG90cGx1Zy5kL2Zpcm13YXJlLzExLWF0aDEway1jYWxkYXRhIGIvdGFyZ2V0
L2xpbnV4L2FyNzF4eC9iYXNlLWZpbGVzL2V0Yy9ob3RwbHVnLmQvZmlybXdhcmUvMTEtYXRoMTBr
LWNhbGRhdGEKaW5kZXggMDNlZWIyZWY5Yy4uYzBlOGYxN2Q5NCAxMDA2NDQKLS0tIGEvdGFyZ2V0
L2xpbnV4L2FyNzF4eC9iYXNlLWZpbGVzL2V0Yy9ob3RwbHVnLmQvZmlybXdhcmUvMTEtYXRoMTBr
LWNhbGRhdGEKKysrIGIvdGFyZ2V0L2xpbnV4L2FyNzF4eC9iYXNlLWZpbGVzL2V0Yy9ob3RwbHVn
LmQvZmlybXdhcmUvMTEtYXRoMTBrLWNhbGRhdGEKQEAgLTEyMSw3ICsxMjEsNyBAQCBjYXNlICIk
RklSTVdBUkUiIGluCiAJCTs7CiAJcmItOTUydWktNWFjMm5kfFwKIAlyYi13YXBnLTVoYWN0Mmhu
ZCkKLQkJYXRoMTBrY2FsX2Zyb21fZmlsZSAiL3N5cy9maXJtd2FyZS9yb3V0ZXJib290L2V4dF93
bGFuX2RhdGEiIDB4NTAwMCAweDg0NAorCQlhdGgxMGtjYWxfZnJvbV9maWxlICIvc3lzL2Zpcm13
YXJlL21pa3JvdGlrL2hhcmRfY29uZmlnL3dsYW5fZGF0YSIgMHg1MDAwIDB4ODQ0CiAJCTs7CiAJ
cmUzNTV8XAogCXJlNDUwfFwKQEAgLTE1OCw3ICsxNTgsNyBAQCBjYXNlICIkRklSTVdBUkUiIGlu
CiAJcmItOTIxZ3MtNWhwYWNkLXIyfFwKIAlyYi05MjJ1YWdzLTVocGFjZHxcCiAJcmItOTYydWln
cy01aGFjdDJobnQpCi0JCWF0aDEwa2NhbF9mcm9tX2ZpbGUgIi9zeXMvZmlybXdhcmUvcm91dGVy
Ym9vdC9leHRfd2xhbl9kYXRhIiAweDUwMDAgMHg4NDQKKwkJYXRoMTBrY2FsX2Zyb21fZmlsZSAi
L3N5cy9maXJtd2FyZS9taWtyb3Rpay9oYXJkX2NvbmZpZy93bGFuX2RhdGEiIDB4NTAwMCAweDg0
NAogCQk7OwogCXdscjgxMDApCiAJCWF0aDEwa2NhbF9leHRyYWN0ICJhcnQiIDB4NTAwMCAweDg0
NAotLSAKMi4xMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
