Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DADED1DB361
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 May 2020 14:33:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ync4pJrV7lg80vfusoHridyg7ZoU8Xe+4eXlrSFfDDk=; b=ROmkVmbdpXbKWI
	CHyBTOUgEQby+NBhp6WjElA0QcSkrb8R4Z5yuA94XkcZm/1raJv6LVEVPDRKWZRl6cBklzUFcGZuQ
	qs5QpqCY4T6f3YiRvdBFDNHxSmtSpmEb1WSWFrD5FjXHq6vmYPxktWIv2QnwiEMs9yFwgXUfwTIOU
	WGY61+iuEMVZ34ZwyvRVWMOXTWzRRidu+O/qWOCR1C6ALnNbLfb3Yc1dz+RR2Pd5nbaQLkwZZqPE/
	VgSb/VaMta7mr3DaMZRZHZqijzXhndexwlGPO0UbbRrCgGquuBbAvCdGs6Q/b/TlS+sKNGCzT6kQS
	nvL1gPblllTOrz4N/Rbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNuq-0007tz-6L; Wed, 20 May 2020 12:33:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNuO-0007iX-Cj
 for openwrt-devel@lists.openwrt.org; Wed, 20 May 2020 12:33:17 +0000
Received: from pali.im (pali.im [31.31.79.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 877E220756
 for <openwrt-devel@lists.openwrt.org>; Wed, 20 May 2020 12:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589977995;
 bh=1DuNYAYz0OV2YaoXQ85jZX9RKZ/BlddJ9EMDuo0fHh8=;
 h=From:To:Subject:Date:From;
 b=IUUVc/i4D22vW77hlN8qxihe+eDY7QLwbW4YbNo4DUdtJhPOijwFtI3unfqwri4Aj
 2BwUkDptgIdmyd1svwAgoyhXmcTetFlDF75ZB2fvpBRuiTkQT4CkwQ7G6dacHUa2TN
 h2bJcVMFWVIRt/5Ek7iDoJRWtnLh54es4WILtNe8=
Received: by pali.im (Postfix)
 id A6FA965A; Wed, 20 May 2020 14:33:13 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 May 2020 14:33:05 +0200
Message-Id: <20200520123305.30994-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_053316_470212_C58AAC15 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
Subject: [OpenWrt-Devel] [PATCH iwinfo] iwinfo: add device id for Marvell
 88W8997 SDIO wifi card
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2lnbmVkLW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KLS0tCiBoYXJkd2Fy
ZS50eHQgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBh
L2hhcmR3YXJlLnR4dCBiL2hhcmR3YXJlLnR4dAppbmRleCAwN2Y2MWI3Li42NGFiNzA4IDEwMDY0
NAotLS0gYS9oYXJkd2FyZS50eHQKKysrIGIvaGFyZHdhcmUudHh0CkBAIC0xNzQsNiArMTc0LDcg
QEAKIDB4MTFhYiAweDJhNTUgMHgxMWFiIDB4MDAwMCAgICAwICAgICAgMCAgIk1hcnZlbGwiICAi
ODhXODg2NCIKIDB4MDJkZiAweDkxMzUgMHgwMDAwIDB4MDAwMCAgICAwICAgICAgMCAgIk1hcnZl
bGwiICAiODhXODg4NyIKIDB4MTFhYiAweDJiNDAgMHgxMWFiIDB4MDAwMCAgICAwICAgICAgMCAg
Ik1hcnZlbGwiICAiODhXODk2NCIKKzB4MDJkZiAweDkxNDEgMHgwMDAwIDB4MDAwMCAgICAwICAg
ICAgMCAgIk1hcnZlbGwiICAiODhXODk5NyIKIDB4MTRjMyAweDc2MDMgMHgxNGMzIDB4NzYwMyAg
ICAwICAgICAgMCAgIk1lZGlhVGVrIiAiTVQ3NjAzRSIKIDB4MTRjMyAweDc2MTAgMHgxNGMzIDB4
NzYxMCAgICAwICAgICAgMCAgIk1lZGlhVGVrIiAiTVQ3NjEwRSIKIDB4MTRjMyAweDc2MTIgMHgx
NGMzIDB4NzYxMiAgICAwICAgICAgMCAgIk1lZGlhVGVrIiAiTVQ3NjEyRSIKLS0gCjIuMjAuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
