Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D8A1831AC
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Mar 2020 14:36:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=URJjw/gHV21If57yu4h4MfdGa8CvDxeVehUjoTn82Mw=; b=hGWJI0e8otXrz9
	K7DHt6r0r+L8cArZ0iuVNxQLd08k9YCthbYx5IQB3SQMxoj0GFfYj4qvNmQ4x/i0+yBzchcxbh2hO
	T15urcShJA3okPaqc048m1WrcJVYCvhR5gIXdR5mAy2vQJRKnH0q+MYxZ6TQmeMsR/WQD/QpQnkyw
	SxSyb0CVgRLnp0L9+jsUAMA3YdjkM4rh9TDsCc6Xnqa2EsnVDEzGvZz5tQ6iCwJlGN9SgK5ecPYsG
	JSSmAXThF22hi3gyK2L4hd35e7QUrog5Dz9/mEFycEZwNeOTgGKgOzuNcKN7XnyA+TGo28QbnJmic
	jO2PQIoMA0tXsSAvqliA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCO0A-0008R7-39; Thu, 12 Mar 2020 13:35:54 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNzv-0008Kr-61
 for openwrt-devel@lists.openwrt.org; Thu, 12 Mar 2020 13:35:41 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 62BC3C0F88;
 Thu, 12 Mar 2020 13:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1584020138; bh=0jD2pElbmbPGemJghLFFG8uCDOgMVmRFhoSxC7TcOZM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=i6d8T6tQPvcBv18W1aaaQiIDDVbJLKZ5eZBHPlbmdS18j/q6incsr5T6n7s8LJiNz
 bE7++2a0tlr/fyLj6mrffmb4RYEIG5Jd5U4rHZztB8CSDxFkC/RgOQb9/eAsa0KpVq
 pKAT6bs7XoPIg3sYeMmtbLyw68Xl6HmWcyXOk4bML5jRTUkui1I084xa1EZi+ETzqG
 9g7lABMQMdDv6oCom1Q2Nh6hAF5A5ESnJheXlMpKQDpQaf/D2IeOQ1vAL+bzA9batV
 5GyTJk23HV/mOzY3JHzrz79YP8zu1rsyrvNZ+oA0hYzvhEChgKIN1lXaCdjEznFxZu
 1f7sIYd5luSdg==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id A965DA005E;
 Thu, 12 Mar 2020 13:35:36 +0000 (UTC)
From: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 12 Mar 2020 16:34:59 +0300
Message-Id: <20200312133501.17939-4-Evgeniy.Didin@synopsys.com>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20200312133501.17939-1-Evgeniy.Didin@synopsys.com>
References: <20200312133501.17939-1-Evgeniy.Didin@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_063539_262237_01F78A20 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 3/5] archs38: switch to kernel 5.4 by default
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
Cc: Evgeniy Didin <Evgeniy.Didin@synopsys.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2lnbmVkLW9mZi1ieTogRXZnZW5peSBEaWRpbiA8RXZnZW5peS5EaWRpbkBzeW5vcHN5cy5jb20+
CkNjOiBBbGV4ZXkgQnJvZGtpbiA8YWJyb2RraW5Ac3lub3BzeXMuY29tPgpDYzogUGV0ciDFoHRl
dGlhciA8eW5lenpAdHJ1ZS5jej4KQ2M6IEhhdWtlIE1laHJ0ZW5zIDxoYXVrZUBoYXVrZS1tLmRl
PgpDYzogSm9obiBDcmlzcGluIDxqb2huQHBocm96ZW4ub3JnPgotLS0KIHRhcmdldC9saW51eC9h
cmNoczM4L01ha2VmaWxlIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2FyY2hzMzgvTWFrZWZpbGUg
Yi90YXJnZXQvbGludXgvYXJjaHMzOC9NYWtlZmlsZQppbmRleCBiZTZiZTA0NzJiLi5kYWRlNzRm
ZWU0IDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvYXJjaHMzOC9NYWtlZmlsZQorKysgYi90YXJn
ZXQvbGludXgvYXJjaHMzOC9NYWtlZmlsZQpAQCAtMTMsNyArMTMsNyBAQCBCT0FSRE5BTUU6PVN5
bm9wc3lzIERlc2lnbldhcmUgQVJDIEhTMzgKIE1BSU5UQUlORVI6PUFsZXhleSBCcm9ka2luIDxh
YnJvZGtpbkBzeW5vcHN5cy5jb20+CiBTVUJUQVJHRVRTOj1nZW5lcmljCiAKLUtFUk5FTF9QQVRD
SFZFUjo9NC4xNAorS0VSTkVMX1BBVENIVkVSOj01LjQKIAogREVWSUNFX1RZUEU6PWRldmVsb3Bl
cmJvYXJkCiAKLS0gCjIuMjMuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK
