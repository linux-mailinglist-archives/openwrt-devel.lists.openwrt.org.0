Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 729A91B0C5B
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 15:15:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xPi093S2Tecblfw+xhE+Bh/SG7FLD7scwNxq8q7wytU=; b=OL6YqYe7FPxFzv
	wLpSRL2qea3N+MJHmNaACPl+Ckn8Z8A5VBRi9SQgrpjksKeKssxOHlHG1t7R+B+OmCpsy1rEQYp6R
	3W9M+SoSeGN3rwBlydK2rjXctECtUvE08nlGDBpZQR2ATlNyz8m68PZaCmAvi6Gf7LmzICbEzpmX3
	Ok9lYm1Q6EBGiDah9LbYGir5ICmMjqcUgUTAcbO59ZS6T+n3rg85sWR/CNQ0HWzeO01HNt+to3fBx
	IF9KHVH43v6NAZZcFpq8/rA/muwp9bXqf7+wEeJtAFBkh9MZKNq7vKC+wB+yUjVTQA+cswwmbuZzO
	KeLgb8kc31rwPyzHfI4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWGN-0005zV-W0; Mon, 20 Apr 2020 13:15:04 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWFP-00052k-PV
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 13:14:05 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 8CBB860F7D;
 Mon, 20 Apr 2020 15:13:59 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 8CBB860F7D
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 8CBB860F7D
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587388440; bh=iG6XITzC3xRLZlaetdfX1PQ1VyxDgIGD4MFWd4wpwdE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=O0oqLQTWI+yyiWe/Fy66zVoS4087Fc/gdv4ZLwf/6DW17/OP4NBSxtAIhwLnHR5OV
 9TrjwGV3u01+EcSjPa1WdMlelQvZuI3xcXBJ58o9O2JxthL76Kjwe8VojY11Dwq0+m
 AMamVzrf07nJJFlN87NRpUbkC4vBwXxqqRUczdnI=
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 15:13:59 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 15:13:33 +0200
Message-Id: <20200420131336.18252-4-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200420131336.18252-1-hacks@slashdirt.org>
References: <20200420131336.18252-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY shortcircuit=no autolearn=no autolearn_force=no
 version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_061404_012748_8C6341F2 
X-CRM114-Status: GOOD (  10.11  )
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
Subject: [OpenWrt-Devel] [PATCH v2 3/6] ath79/mikrotik: enable
 CONFIG_MTD_ROUTERBOOT_PARTS
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

U2lnbmVkLW9mZi1ieTogVGhpYmF1dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRpcnQub3JnPgotLS0K
IHRhcmdldC9saW51eC9hdGg3OS9taWtyb3Rpay9jb25maWctZGVmYXVsdCB8IDEgKwogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2F0aDc5
L21pa3JvdGlrL2NvbmZpZy1kZWZhdWx0IGIvdGFyZ2V0L2xpbnV4L2F0aDc5L21pa3JvdGlrL2Nv
bmZpZy1kZWZhdWx0CmluZGV4IGMwYzYxOTg1YmMuLmUxZTMwZGJlOGYgMTAwNjQ0Ci0tLSBhL3Rh
cmdldC9saW51eC9hdGg3OS9taWtyb3Rpay9jb25maWctZGVmYXVsdAorKysgYi90YXJnZXQvbGlu
dXgvYXRoNzkvbWlrcm90aWsvY29uZmlnLWRlZmF1bHQKQEAgLTExLDYgKzExLDcgQEAgQ09ORklH
X01URF9OQU5EX0FSOTM0WD15CiBDT05GSUdfTVREX05BTkRfQ09SRT15CiBDT05GSUdfTVREX05B
TkRfRUNDPXkKIENPTkZJR19NVERfUkFXX05BTkQ9eQorQ09ORklHX01URF9ST1VURVJCT09UX1BB
UlRTPXkKIENPTkZJR19NVERfU1BJX05BTkQ9eQogQ09ORklHX01URF9TUElfTk9SX1VTRV80S19T
RUNUT1JTPXkKIENPTkZJR19NVERfU1BMSVRfTUlOT1JfRlc9eQotLSAKMi4xMS4wCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
