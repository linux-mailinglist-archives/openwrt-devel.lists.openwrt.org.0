Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 497EBF5EF7
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 13:20:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EkR3CHtEW0uGYa8FEMazQW4ozr/W0849q4HlHKXl5uY=; b=aI6F+bHMOEk63arbSl3Q0ikHY
	lf/mPJYQqlxiclm733rl2Ca2g+YZtWDuRYolWawvE/RzizfskO//JC7solCVwtUASHTjN6owahIBW
	tPFrUUeHedD2thCs5t4pyIIeZnH9lGBILmeZWqVxUNk7EyWUqD6XITveHzOwdONnoAi1gg4+yOZBg
	iyvLP+Mg64VjOVyBU4UZUFrVs/ISfAMWAIkAwXex5v3Iby3Sp1D5bYGHP7OmlZukG24TPSMq5+9PL
	v0etthc1u0MZUn3ZaNnxKFj6GgKaH0F3WW2gP0iDyJwR+TYMq/kTxQHCgrV+Fv1Weh0H2D+BwoUT8
	dpUdb+WcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTPj7-0007f3-AL; Sat, 09 Nov 2019 12:20:25 +0000
Received: from tunnel231050-pt.tunnel.tserv1.bud1.ipv6.he.net
 ([2001:470:1f1a:93::2] helo=trabant.uid0.hu)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTPiz-0007dL-1Q
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 12:20:18 +0000
Received: from catv-178-48-135-203.catv.broadband.hu ([178.48.135.203]:50422
 helo=[10.1.1.1])
 by trabant.uid0.hu with esmtpsa (Exim 4.89 #1 (Debian))
 id 1iTPiv-0007d8-M7
 from <wigyori@uid0.hu>; Sat, 09 Nov 2019 13:20:15 +0100
To: Michael Heimpold <mhei@heimpold.de>
References: <20191104233942.23783-1-mhei@heimpold.de>
From: Zoltan HERPAI <wigyori@uid0.hu>
Message-ID: <ce6d6175-73ab-8445-3e73-17fd05d2bce6@uid0.hu>
Date: Sat, 9 Nov 2019 13:20:11 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191104233942.23783-1-mhei@heimpold.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_042017_236210_9D66048E 
X-CRM114-Status: UNSURE (   5.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 0/3] Further preparations for USB gadget
 usage
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 11/5/2019 0:39, Michael Heimpold wrote:
> This patch series bundles some more steps towards the usage
> of I2SE Duckbills as USB gadget devices.
>
>
Thanks, pushed the series to trunk.

Regards,
Zoltan H


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
