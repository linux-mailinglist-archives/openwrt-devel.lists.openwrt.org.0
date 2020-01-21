Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 494C2143F9C
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 15:32:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9Zv/mxqgD2D2+DxMIJBdO40Fp8KLdqIh8L3M2j6HWU=; b=EZ5D7KSmANi2i4
	/AgN8TPFvovlH4WEaCPkzU6re8ciFAhchONIMLfaBBZ0As+Dye/WT5hF6w+SW6PEkC1hB3MeDqmpo
	soE9/xEeEFEs+KnSxJ2Q/qtGntLqrbJ6YVnQJNOydheAHyOjayo4hkb8QQKP+eqjbfn2y+1AjuGRv
	QWuWtj5OK9NWMbWvaeAHp0M7uFou/g1+NvojQ93SgKUOLBI1pvZ8Rf1hSZTzf5vpbhb39W8Su/pUM
	kkwjf1h7cUgQytieWsec1Dgj08gxKaqcvR4QqkpiYo50G2JCCkYyQz7nISxP/StUZ+iyS058T7VUM
	Xq1YqTfTc/63BQkRDBxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ituZu-0003sP-6A; Tue, 21 Jan 2020 14:32:26 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ituZg-0003r8-Ts
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 14:32:16 +0000
Received: by mail-il1-x143.google.com with SMTP id t17so2479613ilm.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 06:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=GRdA3AQNhFP8xZS3qV6Y+4DNLtVWCfjMfyKE6n3D98k=;
 b=sEJxgfm8VqBsJKtIYgRar3sToa5S42IXhYtrmSko8L5aLaas0y6vFGL4mitgGBKjnN
 LepzoKPq107TDAL0Wq6Q2KG3hYNmlggBX+2EqYvM/u5Rcd28hRlElRjQDyPkC11k1N0y
 34DN6/KO7ElUziv3aAgrqSbd9mLmRWFtZuhu3bAQUrgHP5/7P3FyQoDTafDnQeAacqc+
 SAM9TPtYNFOrbjRLMn//ArbeOyLgCbo/cZbJkreFVmfKkIcR7G+wZZF/6wu1W8FwsoQ0
 FRhCLOIDIvKBD3DrqncXrirNvMtvpFYGLQ3juE1ozNClKDI7+Jh67AgUAlf6+VIqmKdk
 yJ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GRdA3AQNhFP8xZS3qV6Y+4DNLtVWCfjMfyKE6n3D98k=;
 b=a7mL/oacIaePRnWPPVYhsz24mH4blgSLYTIVvU5m01i2AxtACOCeTHFFDrxCRMZb6N
 XOqCfgKRvzMfczmWEEM2JnJZM+A5kyDCSoPqIrEOVr+9yuAjv0UL8qmOxyN4syaAz11c
 0erVquFPdqFYa+RVYU8wb17CWrdI9ucrahF61RvA4TfHDdDKKTzOaiuNZFnz6Nmn/s15
 nnNj56nuFIaffInlQ7bR1lvT6qfJyzuq29+S+9inlFGNA9G+mOnd5lQi7cnReSXd/12S
 XCIytFaGKt1pJwkSjoybLRnWBI3p8qu92syAMMoexEMHV1sZ8oldNa8OzXNZ12YQ0HLS
 xCfw==
X-Gm-Message-State: APjAAAWbQMoRZsDaxYt2S98340kim3MmwyvO1owvNOtDrxXtyaAiIFmT
 DZXaJf2vGPCCuy72V7vld0uDYPSQvmu5FlJ0Usg=
X-Google-Smtp-Source: APXvYqxK+EhxHLZ//MWWo/8rsUa1kLq66BUB1dw7NJvtp9aD+qPBCC3l8OpSQKAdULrfYy/CWFHChgoP2S7rUEfOomw=
X-Received: by 2002:a92:1bc9:: with SMTP id f70mr3777975ill.56.1579617131364; 
 Tue, 21 Jan 2020 06:32:11 -0800 (PST)
MIME-Version: 1.0
References: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
 <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
 <003201d56565$33a9b580$9afd2080$@adrianschmutzler.de>
 <d1100196-b9cc-22cb-55d3-5dd6937a9b38@gmail.com>
 <015201d5d064$8f5d96c0$ae18c440$@adrianschmutzler.de>
In-Reply-To: <015201d5d064$8f5d96c0$ae18c440$@adrianschmutzler.de>
From: Ansuel Smith <ansuelsmth@gmail.com>
Date: Tue, 21 Jan 2020 15:32:00 +0100
Message-ID: <CA+_ehUwqV2iuaEocNKWOvY9Vu_QHuHku-0vpCcnAH_4+qT_txQ@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_063212_976590_8D33502C 
X-CRM114-Status: GOOD (  43.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ansuelsmth[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Migration in ath79 for swapped ethernet
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
 gch981213@gmail.com, David Bauer <mail@david-bauer.net>,
 Piotr Dymacz <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Why not add an additional step in the sysupgrade function. Something
to alert people that switch configuration needs to be migrated and
give the option to do the change itself, use a migration script or use
the default option? I think something like that should be implemented
anyway since it's needed if for some reason in the future we switch
target like mvebu or ipq to dsa drivers...

Il giorno mar 21 gen 2020 alle ore 15:10 Adrian Schmutzler
<mail@adrianschmutzler.de> ha scritto:
>
> Hi,
>
> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> > Behalf Of Piotr Dymacz
> > Sent: Dienstag, 21. Januar 2020 00:34
> > To: mail@adrianschmutzler.de; 'David Bauer' <mail@david-bauer.net>;
> > gch981213@gmail.com
> > Cc: openwrt-devel@lists.openwrt.org
> > Subject: Re: [OpenWrt-Devel] Migration in ath79 for swapped ethernet
> >
> > Hi Adrian, David, Chuanhong,
> >
> > On 07.09.2019 12:15, mail@adrianschmutzler.de wrote:
> > > Hi,
> > >
> > >> > However, this will obviously swap eth0/eth1 on EVERY upgrade, not just
> > >> when coming from ar71xx.
> > >> > So, does anyone have an idea how to limit this to run only when updated
> > >> from ar71xx?
> > >>
> > >> I was thinking about the same. As we have no information about the
> > >> previously installed platform, i was thinking about abusing the wmac path we
> > >> already use to migrate the WiFi configuration.
> > >> However, i think this is not the most elegant way to solve this issue.
> > >
> > > I have to think about that. I recently thought one could just check whether the
> > lan/wan assignment matches the one expected for ar71xx, but that would
> > obviously also catch cases were the user modified it to be like this.
> > >
> > >>
> > >> > Despite, while having the abstraction of "rename_all_eth", I wonder
> > >> whether it would be possible and desirable to do all renames in one step:
> > >> > sed -i -e 's/eth0/ethX/' -e 's/eth1/eth0/' -e 's/ethX/eth1/' $file or
> > >> > even sed -i -e 's/eth0/eth1/' -e  's/eth0/eth1/' $file depending on
> > >> > how sed handles this internally. These options would mean less flash writes
> > >> (although this might not be too important here).
> > >>
> > >> A rewrite with sed is not sufficient, as we will possible rewrite uci section
> > >> names, possibly referenced elsewhere. We have to loop thru all interface
> > >> values and lists, rewriting each occurrence.
> > >
> > > Actually, I could well live with that. What kind of references are you referring
> > to?
> > > If just someone really named a section with ethX, it will be renamed
> > consistently throught all uci files (unless they are stored in another location).
> > > Only in case someone uses a section name with ethX and refers to it e.g. in a
> > custom script, this will be a problem.
> > > And this is where I think we do not have to account for every tiny possibility. If
> > someone upgrades to another architecture, I think it's fair to expect him to check
> > whether his custom scripts still work. We do not have to overdo it.
> > > But that's just my point of view at the moment.
> >
> > I'm in the middle of migrating some devices from soon-to-be-obsolete
> > ar71xx to ath79 target and was wondering about status of the eth0/eth1
> > vs. LAN/WAN assignment issue.
>
> To start with the end: I've decided to stop working on this.
>
> The two major problems are obvious:
> 1. How to make sure we find every possible location of eth0/eth1 in user code
>
> This is a problem which can be solved, and if it does not cover every single special case I could live with it.
>
> 2. How to find out whether we are updating from ar71xx or not.
>
> This is a hard one: We cannot rely on the ethernet setup itself, as the user might have changed it for whatever reason. We could rely on some other parameters as suggested (wmac path etc.), but that would not be generally applicable and still would impose some boundary conditions (e.g. start before the wmac migration, as then config would be "old" and paths on the device would already be "new", making identification of the update possible).
>
> An alternative way would be to exploit /etc/board.json for that, given that it is not updated during sysupgrade (I'm not sure what's happening here). If it is not updated, it would give us access to the configuration when the user installed the device, and without the changes the user would have made to /etc/config/network. One could then parse and compare /etc/board.json to some (device-specific) reference (e.g. wan=eth0) and base the decision to apply migration on that. Afterwards, a new /etc/board.json is generated, so the condition is not met anymore. Despite for the device-specific condition, this would also be a generally applicable concept.
>
> All in all, this second problem (when to migrate) is the bigger problem. We also have a similar case in https://github.com/openwrt/openwrt/pull/2649
>
> So far for the technical aspects. From the organizational point of view, for a long time I thought I'm the only one caring about this topic. Since there was not much interest in bringing this to 19.07 before the release, I do not see much use of adding it afterwards now.
>
> In any case, the migration script will be a complicated task and will certainly introduce cornercases as well. All in all, I do not think it's worth it, and we should keep to advise people to flash with "-n" that single time when upgrading from ar71xx to ath79. For the pros that will change their Ethernet setup by hand later without using "-n", I'd still provide the "easy" migrations like e.g. LED names.
>
> >
> > I'm aware of the 8dde11d521 ("ath79: dts: drop "simple-mfd" for gmacs in
> > SoC dtsi") [0] and following changes but that "fixed" the problem only
> > for devices which were following already reversed (I wouldn't call it
> > wrong or incorrect, I also prefer to have LAN on eth0 interface) SOC's
> > GMACx <> ethx assignment/register under ar71xx target - e.g. LAN on eth0
> > which is in fact SOC's GMAC1 and WAN on eth1 which is SOC's GMAC0. Good
> > explanation of that inverted assignment can be found in Jeff's patch
> > here: [1].
>
> Well, effectively a lot of devices match ar71xx order again, but also several do not match anymore after that.
>
> For the underlying logic, I think Chuanhong will be the best person to discuss with.
>
> I've tried to start a list of devices where eth0/eth1 are swapped compared to ar71xx _now_ here:
> https://openwrt.org/docs/guide-user/installation/ar71xx.to.ath79#devices_with_known_config_changes_without_migration_available
>
> >
> > I have a feeling that the idea with migration script got abandoned
> > (Adrian?), so I was wondering if there is any other way we could
> > preserve ar71xx LAN/WAN <> ethX assignment in ath79?
>
> See above, yes, I effectively abandoned that.
>
> >
> > For example, I have a QCA9531 based device with PHY4 (connected directly
> > to GMAC0) labeled as LAN (and registered as eth0 in kernel) and PHY3
> > (connected to GMAC1 over internal switch) labeled as WAN. On ath79, due
> > to change introduced in 8dde11d521, LAN and WAN order gets swapped (as
> > expected) but partially reverting above change (adding back "simple-mfd"
> > to eth1 in device's DTS, see below) brings back the "old" order of
> > interfaces.
> >
> > &eth1 {
> >       compatible = "qca,ar9330-eth", "syscon", "simple-mfd";
> >       mtd-mac-address = <&art 0x6>;
> > };
> >
> > But it doesn't seem as a proper fix to me (maybe I'm wrong?) thus the
> > question about any other, better approach?
>
> That's how I feel. For me, this always looked like a hack to me (based on my shallow level of understanding, though).
> There might be special cases where this is necessary (e.g. force a device to be eth0 due to failsafe), but I still do not like it.
>
> With the first device where I observed the swapped eth0/eth1, the GLinet AR150, Chuanhong explained me that the setup in ath79 would be more correct than the one in ar71xx.
> After all, if we advise to flash with -n anyway, I would prefer to have the "more correct" setup in ath79 compared to having to stick to the setup from ar71xx where that applies.
>
> So, no matter what we do, there is no easy way forward.
>
> Best
>
> Adrian
>
> >
> > [0] https://github.com/openwrt/openwrt/commit/8dde11d521
> > [1]
> > https://www.mail-archive.com/openwrt-
> > devel@lists.openwrt.org/msg48526.html
> >
> > --
> > Cheers,
> > Piotr
> >
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
