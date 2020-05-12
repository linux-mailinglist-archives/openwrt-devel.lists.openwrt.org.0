Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D83C61CEC98
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 07:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tEHJuopScWvgpHW+8aDW1CS/4wIJkxo6ibWN8Q9dhXU=; b=IYxPnGKpfSBhakiSsNVm9b+s3
	Ue9vPNrpQOerQgJudJ6xU1LwGajK8AHtRHET1773IJ/9msHz0Fz/UrNEwwmUgwi/EwhMwb0SS1MUx
	MWmmPCq6rFAfa+VJkb1Htw033UcOU1rI6+FBA2IIN/yTopEuKxDjbqbUr24hQfAP9DN2PrpkXKobF
	y8Mb3zyf7sObsaazYc4dVBXXSnjrh0rwjiJ3LFA5OrChlWeqkIz7IF+3t9AoB5QnrBh8d6new/Iwx
	HnuIjZwJU13F7/Uw3292ZBJ10nKzZ1TEOsB7+1TAE/5pA1tO65bhF7YHlvhZaG+Jk5ZaUsL+8uovI
	5cJ1lnfDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYNsu-0004g6-4L; Tue, 12 May 2020 05:55:20 +0000
Received: from 11.mo4.mail-out.ovh.net ([46.105.34.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYNsZ-0004cz-Po
 for openwrt-devel@lists.openwrt.org; Tue, 12 May 2020 05:55:01 +0000
Received: from player760.ha.ovh.net (unknown [10.110.103.225])
 by mo4.mail-out.ovh.net (Postfix) with ESMTP id 464EA235587
 for <openwrt-devel@lists.openwrt.org>; Tue, 12 May 2020 07:54:40 +0200 (CEST)
Received: from RCM-web9.webmail.mail.ovh.net
 (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
 (Authenticated sender: rafal@milecki.pl)
 by player760.ha.ovh.net (Postfix) with ESMTPSA id CFE4C1243B5EF;
 Tue, 12 May 2020 05:54:34 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 12 May 2020 07:54:34 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Daniel Golle <daniel@makrotopia.org>
In-Reply-To: <20200511234549.GA574432@makrotopia.org>
References: <20200511234549.GA574432@makrotopia.org>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <fa171f55241f513f411c3d8913c21963@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
X-Ovh-Tracer-Id: 4187503229769191034
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrledugddutdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepggffhffvufgjfhgfkfigihgtgfesthejjhdttdervdenucfhrhhomheptfgrfhgrlhgpofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepveefvdetjeffueefkeeuuedvgefhgeegjefgvedvgeeiteduueeivdeltedthfetnecukfhppedtrddtrddtrddtpdduleegrddukeejrdejgedrvdeffeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejiedtrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprhgrfhgrlhesmhhilhgvtghkihdrphhlpdhrtghpthhtohepohhpvghnfihrthdquggvvhgvlheslhhishhtshdrohhpvghnfihrthdrohhrgh
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_225459_984238_D7F9A83F 
X-CRM114-Status: UNSURE (   5.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.34.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [46.105.34.195 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH fstools] block: fix segfault triggered
 by non-autofs mounts
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
Cc: openwrt-devel@lists.openwrt.org, John Crispin <john@phrozen.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2020-05-12 01:45, Daniel Golle wrote:
> Program received signal SIGSEGV, Segmentation fault.
> main_autofs (argv=<optimized out>, argc=<optimized out>)
>     at fstools-2020-05-06-eec16e2f/block.c:1193
> 1193:    if (!m->autofs && (mp = find_mount_point(pr->dev))) {
> 
> Fixes: 9ab936d ("block(d): always call hotplug.d "mount" scripts from 
> blockd")
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>

Thanks! Please push it asap!

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
