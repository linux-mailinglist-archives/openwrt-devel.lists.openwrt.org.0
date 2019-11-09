Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27AF5F5EF5
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 13:20:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wai6w7WsTZz6HK+3TTFBmvZEXzIs/LMqENdi1zHcBlc=; b=Ggbcr9Gbn6rQzqOIQl79OmAgq
	HDESBrkwXL/CVJoNrvTroA22QXxPo1r38RK4DIkbgN/NpBmeGxHYgvXcMc4WG51SY5fFLzCi0nOW0
	VGWzmtcoB3C6640zx2986QUhWiPtt8yE0+9kPJXv+5bFmwens89stNknMHQzR6+4QXvCN9FiVi15g
	OrYy/Ckzno+xGD4+PcDSpQqsMZtFi4sTy/6TnHz6oQhKH6r2Ux9rz9wxdD7Q5mXAUlvEA/EwR27BP
	VRRKUjFZNhvB1JR0EvAN/R3PWDE2NIwawVPrH/23Xj7yXRhNemoAIYTEtrd5fw0tpVWtx+kwjEzOI
	TVKE/q96Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTPif-00069i-GW; Sat, 09 Nov 2019 12:19:57 +0000
Received: from tunnel231050-pt.tunnel.tserv1.bud1.ipv6.he.net
 ([2001:470:1f1a:93::2] helo=trabant.uid0.hu)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTPiQ-00069B-U5
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 12:19:47 +0000
Received: from catv-178-48-135-203.catv.broadband.hu ([178.48.135.203]:50417
 helo=[10.1.1.1])
 by trabant.uid0.hu with esmtpsa (Exim 4.89 #1 (Debian))
 id 1iTPiB-0003XA-Br
 from <wigyori@uid0.hu>; Sat, 09 Nov 2019 13:19:30 +0100
To: Michael Heimpold <mhei@heimpold.de>
References: <20191104231514.23268-1-mhei@heimpold.de>
From: Zoltan HERPAI <wigyori@uid0.hu>
Message-ID: <83910558-dbe0-2d87-52c3-63e686aa10af@uid0.hu>
Date: Sat, 9 Nov 2019 13:19:24 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191104231514.23268-1-mhei@heimpold.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_041943_125530_86925F24 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH RESEND] mxs: add support and switch to
 kernel 4.19
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

On 11/5/2019 0:15, Michael Heimpold wrote:
> Also remove kernel 4.14 support and the meanwhile obsolete patch.
>
> This was run-tested on I2SE Duckbill device and
> Olimex OLinuXino Maxi board.
>
> Signed-off-by: Michael Heimpold <mhei@heimpold.de>
>
Thanks, pushed to trunk along with the u-boot upgrade.

Regards,
Zoltan H


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
