Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6771F73AA
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 13:15:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+ry863Flw8hOhXhoajCFbQFfX2e/2Wmn7yi9rygTZ0=; b=iPt9WMzFyrymLe
	EnFowlt9KXqUPdUNqBMZEF6FWfWCJRhkGYoVnnXbdP6WCf4QwBAYsEBLRgdk90C+iaM2fjcACqvQt
	/Fr++cKr/8CEJj260YulUpJyRLdHaCKAeoit04om0Yor1sCYUl3uIX81SAcg5i7AEEPyrxGymxqga
	OPSboi0pvx3Y+pLrcMWg8sOu+WNEq8K88mDBOYU35ws0OYh6J5SIMNwvxtXKErAiAkMRjX1mA33fX
	ge9+2jZv9+NSdAEsm+4mE/Pw5O6XaCM4dQM42up/8V/WwCEXAsgPEzwS8KpDOTFXoyNlbXLVu7l/v
	ZzZ+7HWVIlWbZIdbwdRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU8ar-00040j-Dc; Mon, 11 Nov 2019 12:14:53 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU8aI-0003a5-P8
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 12:14:20 +0000
Received: by mail-lj1-x241.google.com with SMTP id k15so13534011lja.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 11 Nov 2019 04:14:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Lp+s4MlNrW/Eo2/vM9LoZ1mVyBDuQ+Hi9fBbxAg4a60=;
 b=ujO5RcpCNMY/ntG5dKkj9Df2tyAgSXBf6GzyJz+x03DKcPDt3w2ku2j06/4g0uAO/a
 r7VV9FZZaUk4+14gjaB2oCFBUCx3gTuITEwBA5+vpFZ1jBGcJELBj1NAkECopLaqOYvI
 cMiymX/eC2Omo3IvHtxKJ5viHI/s4GOr/QLXQBtFdBI/cKfxx1kC7wg7Rbs4KSJvSU4X
 wKY8Z3ofSVSyrR10/YULQEnf9CzyOR2eBZqzc0j7tS8g3rXKNSsT07/gNxlCFyqz90rH
 PQllmnWYRcnWWq+LSxkiW7ka2JInxxCSp5baonVZCBI0Lf9nNr3qOh3FPlgEGDqWTVAW
 wHXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Lp+s4MlNrW/Eo2/vM9LoZ1mVyBDuQ+Hi9fBbxAg4a60=;
 b=GxiCkSqzxn2+ectrg9Zgvmn8/Kg3TSyDJNw1cZsjXZtIHRej1z060krSFbiLxcM4JD
 QPeoKuevnt4/mM9z2+IgqP3ayZ/UFOJ5y3MkLQqm0ONaxG/qDFb0vmitrBOwGs2tIpdu
 2xk6VpyPqbgWLNJpg4RlVFYYLKOmsywhVMeSaUZ/Wmmbume9mtx9Jqaojoi1vyKYeK1U
 umJLeYrsRJvlJHF9OzPFsqXnACiFxnGo9d57zS80i+wmKjT7PVX//mQb26EOIWoknOYT
 zLP/x8a5KLb/lom1rGj4pPXGVA++lZtqxZKNO2u5rw3EdpD/9dC4SJpE+rSurjguLEtt
 DzJQ==
X-Gm-Message-State: APjAAAUiZdtP4QtH3LTyA7DF+duyFHVr2PCMELHrTE5OLUVlsWN3oFyr
 y621INu6LYT0IQ5rQN9ygZY=
X-Google-Smtp-Source: APXvYqzaB7/AXorvJlCT0PafxJ6xZ1ZJ/pBfu1U1mN/dKAY6vhmw2XpCO9J37O6avPLUCgevJWQ/IQ==
X-Received: by 2002:a2e:3311:: with SMTP id d17mr16448605ljc.237.1573474455814; 
 Mon, 11 Nov 2019 04:14:15 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id h16sm8241515ljb.10.2019.11.11.04.14.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 04:14:15 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xABCEDLi031809; Mon, 11 Nov 2019 15:14:13 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xABCEDDc031808;
 Mon, 11 Nov 2019 15:14:13 +0300
Date: Mon, 11 Nov 2019 15:14:12 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20191111121412.GV1190@home.paul.comp>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <20191109135320.25020-1-fercerpav@gmail.com>
 <010d01d59880$f2d30850$d87918f0$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <010d01d59880$f2d30850$d87918f0$@adrianschmutzler.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_041418_888736_279F8960 
X-CRM114-Status: GOOD (  20.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add D-Link DIR-615 E4
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
Cc: openwrt-devel@lists.openwrt.org, tmo26@gmx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Adrian,

Thank you very much for the review.

On Mon, Nov 11, 2019 at 12:12:47PM +0100, Adrian Schmutzler wrote:
> > +		power_green: power_green {
> 
> As stated above, change the _label_ to include a "led_" prefix, so
> this becomes "led_power_green: power_green {". Same for power_amber
> below.

Noted.

> > +			label = "dir-615-e4:green:power";
> 
> Sorry for causing confusion here. I have had a look into ar71xx mach
> files and they consistent use "d-link" as vendor for the led
> labels. Thus, I think it makes more sense to revert that to the
> previous version "d-link:green:power".

Why do you think so? If board name is a good idea and allows sharing
led arrangements (and sharing is desired) then why should we stick to
the old way of doing it?

> > +		wlan {
> > +			label = "dir-615-e4:green:wlan";
> > +			gpios = <&ath9k 1 GPIO_ACTIVE_LOW>;
> > +			linux,default-trigger = "phy0tpt";
> > +		};
> 
> At some point, we started to put ath9k leds into a node of their own:

Noted.

> > +&spi {
> > +	status = "okay";
> > +	num-cs = <1>;
> 
> Please add empty line after status.

Yep.

> > +			nvram: partition@30000 {
> > +				reg = <0x30000 0x10000>;
> > +				label = "nvram";
> > +				read-only;
> > +			};
> 
> Remove the node labels for the two partitions above, as they are not used anyway (but not the label properties).

Noted.

> > +			/*
> > +			These two partitions are defined by CameoAP99 layout
> > +			but not needed for vendor firmware: MAC address is
> > taken
> > +			from "nvram", language pack can be flashed separately.
> > +
> > +			mac: partition@3b0000 {
> > +				reg = <0x3b0000 0x10000>;
> > +				label = "mac";
> > +				read-only;
> > +			};
> > +
> > +			lp: partition@3c0000 {
> > +				reg = <0x3c0000 0x30000>;
> > +				label = "lp";
> > +				read-only;
> > +			};
> > +			*/
> 
> Well, we still do not know whether they are present in vendor
> firmware. I'm still skeptical about removing them.  Nevertheless, I
> won't prevent you from doing that, but please remove this comment
> from the DTS then and put an extensive description into the commit
> message instead.

I've made specific effort to flash vendor firmware and confirmed by
testing on hardware that the vendor firmware doesn't need those
partitions. Isn't that enough? What important aspects did I not check?

Regarding removing comments in DTS, this I am not yet sure is the
right way to go, please consider this rationale: DTS files are not
only OpenWrt-specific, they're supposed to specify hardware
arrangements for the upstream Linux, and for all the other low-level
software that can be booted on hardware too (such as barebox and
u-boot bootloaders). This said, whatever can't be expressed as a set
of properties should still be mentioned in the comments so that
whoever is dealing with this hardware has extensive information.

> > +&eth0 {
> > +	status = "okay";
> > +
> > +	/* ethernet MAC is stored in nvram */
> 
> Remove those comments. You are setting up stuff in 02_network, which
> are relatively standard, so I think extra comments are not
> necessary.

E.g. when (if at all ever) the kernel gains support for parsing nvram
partition, this comment will be changed to a proper DT property. But
it doesn't mean that a person looking at this file before that happens
should need to consult OpenWrt sources to understand how to deal with
this board properly.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
