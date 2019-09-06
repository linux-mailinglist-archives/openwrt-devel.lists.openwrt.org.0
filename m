Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E525AB8FD
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 15:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hU8kD6RcGWOl6wJj6jEx1bRLaCDksviHcHebQSJaBSI=; b=bTQVP6T+J5JvMPKHPaBmwZqLv
	N7MPSYewr5glW9TY7cbxsphhpQR554r2vdQhHEaNDxZGgPvyKF94FKmrfSLjZ5/XvUAlrZva2TEl8
	7plZNFRcyQnYvsK1G6Mjp7u3kouRtgmpmI9RbHsSFUVaeo1tBPpTgmOT+e7B+mE11FTU+ZoxrTNeI
	inqAwBNXpZoi8WxYapNE2C+dowMPDx69WO2rG2ID/blphwQpV6RUV/lNDi1O4EjxeCnaqx5ZXYOa6
	AG34Vnr10WTus6UgDF0R14rlrycyHtGj+GTpfIbrTSiLSwZefRxdl2HVJVa0YC6pgoVYFwQiib9+2
	G4JR50Rvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6E38-0000Vs-MO; Fri, 06 Sep 2019 13:13:14 +0000
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6E2t-0000Nj-PG
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 13:13:01 +0000
Received: from player716.ha.ovh.net (unknown [10.108.54.203])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 908AE226A08
 for <openwrt-devel@lists.openwrt.org>; Fri,  6 Sep 2019 15:12:51 +0200 (CEST)
Received: from RCM-web3.webmail.mail.ovh.net
 (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
 (Authenticated sender: rafal@milecki.pl)
 by player716.ha.ovh.net (Postfix) with ESMTPSA id 16CEF976B5E6;
 Fri,  6 Sep 2019 13:12:46 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 06 Sep 2019 15:12:45 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
In-Reply-To: <007d01d564b3$b63ea4e0$22bbeea0$@adrianschmutzler.de>
References: <20190906051054.18311-1-zajec5@gmail.com>
 <20190906051054.18311-4-zajec5@gmail.com>
 <007d01d564b3$b63ea4e0$22bbeea0$@adrianschmutzler.de>
Message-ID: <3dc6bcbd6132c0c470be5116de8512f1@milecki.pl>
X-Sender: rafal@milecki.pl
User-Agent: Roundcube Webmail/1.3.10
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
X-Ovh-Tracer-Id: 6580603484589297274
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrudejledggeelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_061259_969980_B28DA82A 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.165.33.202 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: sysupgrade: use
 $UPGRADE_BACKUP to check for backup
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
Cc: 'John Crispin' <john@phrozen.org>,
 =?UTF-8?Q?=27Rafa=C5=82_Mi=C5=82ecki=27?= <zajec5@gmail.com>,
 'Jo-Philipp Wich' <jo@mein.io>, openwrt-devel@lists.openwrt.org,
 'Jonas Gorski' <jonas.gorski@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2019-09-06 15:05, Adrian Schmutzler wrote:
>> diff --git a/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh 
>> b/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh
>> index e313562017..8e02186eb8 100644
>> --- a/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh
>> +++ b/target/linux/ipq40xx/base-files/lib/upgrade/openmesh.sh
>> @@ -74,7 +74,7 @@ platform_do_upgrade_openmesh() {
>>  	#
>> 
>>  	# take care of restoring a saved config
>> -	[ "$UPGRADE_OPT_SAVE_CONFIG" -eq 1 ] && 
>> restore_backup="${MTD_CONFIG_ARGS} -j ${UPGRADE_BACKUP}"
>> +	[ -n "$UPGRADE_BACKUP" ] && restore_backup="${MTD_CONFIG_ARGS} -j 
>> ${UPGRADE_BACKUP}"
> 
> Any reason for the curly braces here?
> 
> If not, I'd consider removing them with this patch ...

I just left existing coding style

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
