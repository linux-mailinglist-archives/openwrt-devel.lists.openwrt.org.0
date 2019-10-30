Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64807E9AC7
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 12:28:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6WDFFJLR9VFEvgIg10Ex4PVIu+hkyk9za6ydNx+J9s8=; b=ECmWFhdcHC/tAc
	rY3YdAAqWG8IQkr74SVSpBdSm8cZITJ08VEpeG0iHrzaMMd8NqeJBwor2ijGH9sN5SzeBifE463hM
	yWDnkg6h7Fp0cc2kLyZ9TW4ahF7/6S9SVawYZCX9r4YVYB21erZzqXnPzYNdQl7yBmuVOiMO/+hrn
	o6kRYR8T+f6k8QmT1+o+Zk0RMuw9bSy1bGJrrG3Kr8NWCXK8M81p3QOxzQdpsGgXmnBI7SP45l5yO
	FravKYMxGTW/lFdiClxPXVYH1RPW7TH3jXhkZgaeqXqpKoJ4LaALOrfZysrUny2+V48h7V/kMm1Cl
	YlPiterT7xOzZlyJhoow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPm98-0000gZ-8u; Wed, 30 Oct 2019 11:28:14 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPm8w-0000fS-Ed
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 11:28:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To:From;
 bh=i4/I4jXHDsv8rJh7Uw3UVITpxbg4ZfPNLUAlNSQnAFw=; 
 b=QeypyVpW7E27cD1OV/21dJ1F3hHbvoTE/xWwGG6Z9A/867LU21UyHpWwNBtUJy8gJO3YdlX6Ujo6Kl+dzdcP6EyJAPYnf0Zn9hyvG/PJBQhobz8VI49Fgkuik4xKghWW5PQoAv0WFnzEKicBOsDxRY8DN5k6MkdIKKvhTygm2Zg=;
From: Daniel Danzberger <daniel@dd-wrt.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 30 Oct 2019 12:27:23 +0100
Message-Id: <20191030112726.13106-1-daniel@dd-wrt.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a05:a1c7:1:b101:819:5a9a:5145:d03a
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,NO_RELAYS
 autolearn=ham version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1iPm7v-000189-KZ
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a05:a1c7:1:b101:819:5a9a:5145:d03a]
 (helo=lappi.newmedia-net.de)
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <daniel@dd-wrt.com>)
 id 1iPm7v-000189-KZ; Wed, 30 Oct 2019 12:27:07 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_042803_193431_06E89B04 
X-CRM114-Status: UNSURE (   4.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 0/3] ipq40xx: Add new device Compex WPJ419
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
Cc: Daniel Danzberger <daniel@dd-wrt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

These 3 patches add support for the Compex WPJ419 board.

Patch 1 adds the nandspi driver for the Gigadevice flash used on the wpj419.
Patch 2 fixes a reboot/shutdown hang.
Patch 3 Adds the actual wpj419 device support.


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
