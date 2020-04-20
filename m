Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E976F1B0CC7
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 15:36:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3JPOOyosDVK/APbA8HRcMwISadXJLtLsGvjsBBomvwM=; b=KggQ6aJxv2wQ0G
	KTB38N6b/PMMp/j/JRz7YDxuaebZGTV5B7PL+Z9m54f33kJQ2aQUfV9K6GSJPjeQpfCT+ascKvxFx
	4DNbScsGfKUOf+zRQbHVTZQeLnai8AlPp6iVhFxWVpXPkZGhI8DmbA26+B2F3Pow4ixjE3CSf1jVd
	SZRMeH5llths3XK78TtqizX4UrPu/Eame9xYjYGKxTrSN/TvyJQe6pismm1oNCr2AErpSRe144Usy
	CSrwazgLS5raWf8fBX1ATI5LGt0WwCZey5ynrccFyuci4uA9Di3UmXIGJnT11cm7yCBqCOMkLpc/u
	iQKMMqPQz0lkLTA1gIqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWb8-0001Mo-PC; Mon, 20 Apr 2020 13:36:30 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWa7-0000LD-LI
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 13:35:29 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 6301260F7D;
 Mon, 20 Apr 2020 15:35:23 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 6301260F7D
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 6301260F7D
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587389724; bh=qEshhG4PLaauvrnU7rPqcqkWH8lBiYcSjhqhwsm2PoI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xH5heUyTQ8oq8esmHLsBOJk+IVHGaRVmrChczcdtqtpbc8fFhLczE+GxtBQWQ9Bcs
 TYAjZM8ZlEfV1YllYV0BZCqBuHntuzGjfffLTa7MQwi8+Uw1xNJlOxeLgDH+mRoyz8
 xV7lHlIVD5mns6kt0Q5xkX95terp5zVU0H8HArt0=
Received: by supercopter (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 15:35:22 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 15:34:53 +0200
Message-Id: <20200420133503.18700-5-hacks@slashdirt.org>
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
X-CRM114-CacheID: sfid-20200420_063527_860084_485042F7 
X-CRM114-Status: GOOD (  10.13  )
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
Subject: [OpenWrt-Devel] [PATCH v2 04/14] ar71xx/mikrotik: enable mikrotik
 platform driver
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
IHRhcmdldC9saW51eC9hcjcxeHgvbWlrcm90aWsvY29uZmlnLWRlZmF1bHQgfCAyICsrCiAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2Fy
NzF4eC9taWtyb3Rpay9jb25maWctZGVmYXVsdCBiL3RhcmdldC9saW51eC9hcjcxeHgvbWlrcm90
aWsvY29uZmlnLWRlZmF1bHQKaW5kZXggZTMyNGU0YzI1Mi4uZWIyZjM2MjAzNCAxMDA2NDQKLS0t
IGEvdGFyZ2V0L2xpbnV4L2FyNzF4eC9taWtyb3Rpay9jb25maWctZGVmYXVsdAorKysgYi90YXJn
ZXQvbGludXgvYXI3MXh4L21pa3JvdGlrL2NvbmZpZy1kZWZhdWx0CkBAIC0yNiw2ICsyNiw4IEBA
IENPTkZJR19IV19IQVNfUENJPXkKIENPTkZJR19MRURTX1JCNzUwPXkKIENPTkZJR19MWk9fREVD
T01QUkVTUz15CiAjIENPTkZJR19NQVJWRUxMX1BIWSBpcyBub3Qgc2V0CitDT05GSUdfTUlLUk9U
SUs9eQorQ09ORklHX01JS1JPVElLX1JCX1NZU0ZTPXkKICMgQ09ORklHX01URF9DRkkgaXMgbm90
IHNldAogQ09ORklHX01URF9DRklfSTI9eQogIyBDT05GSUdfTVREX0NNRExJTkVfUEFSVFMgaXMg
bm90IHNldAotLSAKMi4xMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
