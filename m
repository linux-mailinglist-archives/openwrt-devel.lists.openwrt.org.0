Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEF81EBB8E
	for <lists+openwrt-devel@lfdr.de>; Tue,  2 Jun 2020 14:22:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1kLstvzdD71icZ8Teq9fVcOmCSssdrSAf3yIFOehIeA=; b=jyQC8EzSBoiGbJyPnf2x9Ya0E
	gzdM7JkjOJ48GcQySm84SZhL0XKMSHPvm/uoAHRofVL/snx1TU3CE8bA0yA9Ygb+GM0Tbcrtow3/Z
	GR5uJ+UT/078Q7Vy8V4AgA2p0cxiQbXWwjU1tk+O6q6nDru5FrJYh0RhgK82zIymEmYWrjTimyJMc
	W5LruPnpKmM+z1s7k5B9zdydOA1H6zSN4jXXwhpma4OfwGYmHYvo4SDA7aGHW86z9W/od1nEod65X
	P8cD0RcEmFOwCBIs6xGAjou9Ilqdge9H65ZDkVrVHVHq5VJ+2SsSN/CnzEsWeGctum9ZqKM5xU+Fs
	5duLdfErw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg5vX-00008p-LM; Tue, 02 Jun 2020 12:21:55 +0000
Received: from [213.175.92.62] (helo=mail.pbx.lv)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg5vQ-00007p-0U
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jun 2020 12:21:51 +0000
Received: by mail.pbx.lv (MailSystem, from userid 80)
 id 5E7831A60A8; Tue,  2 Jun 2020 15:21:38 +0300 (EEST)
To: Michael Jones <mike@meshplusplus.com>
MIME-Version: 1.0
Date: Tue, 02 Jun 2020 15:21:38 +0300
From: Roman Yeryomin <roman@advem.lv>
In-Reply-To: <CAJQUmm7kmKh-yNdHWWLVRwbVKhc7RXXZQhOo3+9vhWX+1taSdA@mail.gmail.com>
References: <20200601153226.15229-1-roman@advem.lv>
 <CAJQUmm5aVrkZ_UQOx-2Yk_jUreZOqCG5wt+S7+b3p9sqAyJY2g@mail.gmail.com>
 <6406348b-1e10-5e6d-0c20-9e2716099833@nbd.name>
 <CAJQUmm7kmKh-yNdHWWLVRwbVKhc7RXXZQhOo3+9vhWX+1taSdA@mail.gmail.com>
Message-ID: <c6e9c91c03ca90ca6e2b7e1a92aaa86b@advem.lv>
X-Sender: roman@advem.lv
User-Agent: Roundcube Webmail/1.0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_052148_222579_0CBCC0CF 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: 3.3 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.0 APP_DEVELOPMENT_NORDNS App development pitch, no rDNS
Subject: Re: [OpenWrt-Devel] [PATCH] build: improve ccache support
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2020-06-01 21:34, Michael Jones wrote:
> On Mon, Jun 1, 2020 at 1:22 PM Felix Fietkau <nbd@nbd.name> wrote:
> 
>> On 2020-06-01 19:11, Michael Jones wrote:
>> >
>> >
>> > On Mon, Jun 1, 2020 at 10:33 AM Roman Yeryomin <roman@advem.lv
>> > <mailto:roman@advem.lv>> wrote:
>> >
>> >     Set CCACHE_DIR to $(TOPDIR)/.ccache and CCACHE_BASEDIR to $(TOPDIR).
>> >     This allows to do clean and dirclean. Cache hit rate for test build
>> >     after dirclean is ~65%.
>> >     If CCACHE is enabled stats are printed out at the end of building
>> >     process.
>> >
>> >     Signed-off-by: Roman Yeryomin <roman@advem.lv <mailto:roman@advem.lv
>> >>
>> >
>> >
>> > This certainly looks like an improvement.
>> >
>> > However, there is an important usage case that this change doesn't
>> address.
>> >
>> > Frequently when I am working on OpenWRT related things, I have many
>> > different workspaces all tied to the same git repository hosted
>> > externally. The reason for this is to allow multiple builds to live and
>> > run independently.
>> >
>> > Having the CCACHE_DIR be located *inside* the repository doesn't share
>> > the cache between multiple workspaces.
>> >
>> > So can the CCACHE_DIR be made configurable at build time based on the
>> > .config file? Perhaps it can default to this, and only be set to the
>> > value in .config if provided? For my purposes, I would always set the
>> > CCACHE_DIR to a path that all of my workspaces use.
>> I don't think there's a need for that config option. You could simply
>> add a .ccache symlink in your source dir and point it to your shared
>> cache. I do the same with dl on my trees.
>> 
>> - Felix
>> 
> 
> I disagree.
> 
> Having build behavior change based on a symlink is undesirable.
> 
> If it were a config option, it becomes a documented feature that is 
> easily
> discoverable in the menu config.
> 
> Additionally, having the ccache directory be a configuration option 
> allows
> it to persist across clones of the git repository, if the .config file 
> is
> stored in git. A symlink would need to be manually re-configured on 
> each
> clone.

I agree with Felix. Having one ccache directory for multiple repos 
doesn't make much sense to me as most probably they are for different 
platforms. And even if they are for same platform there are more chances 
for ccache corruption and deleting it will affect all those repos. So it 
still can be done with symlink but IMO should be done manually to make 
sure you know what you are doing.
Also BASEDIR should be changed too, probably, if we want to go that way.

Regards,
Roman

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
