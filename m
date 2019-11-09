Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DD1F5F39
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 13:57:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ktKGgTSCAz9E4890HMWAEYFsIKG0eFo1F0Lx8haPOws=; b=TplzrrDE7RdMv8
	Q1RzRFqadJtWYgL3R/qoivQelrKsvgR0yAjhe70Yn0QqHxXJ+cNU4p3WuE4/tIT1ZkYFzYHmFVAkL
	AoTX93K6EplaH+DsdfD+gsm0S73srhg+2zXVXb1R0sMqGozIbXo+uWtZ7DUgyVnqpw5/gkWUvERvd
	wLyb5ouAC1QFJEKGsxmivIBSnuwNldgTWoJZtuQ540lR69wzw5iJI4TTx7j9qirNxksCVDGoh5Ob8
	IeaSHXZQu2uGd4NFGnJcd91B1plbGtJZsbEtrtyd/w65QNDWDv9W8MS5IDDQO+7WhqEiX5zGFJORp
	Q6ThXODxI0qV9Ge73xvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTQIy-0003fN-Vg; Sat, 09 Nov 2019 12:57:29 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTQIi-0003XZ-9a
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 12:57:13 +0000
Received: by mail-wr1-x441.google.com with SMTP id p2so9965215wro.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 09 Nov 2019 04:57:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V6dEn0t/sLaJt7G2OuwYBXzSQVSrueR0BkyQQmdFtqA=;
 b=N8TuN2zBAyyJp776Vujmga8GoXWjbsz3+IAmeMXQ0oFSxhQY2j6/SrwhWo9uaZvM4Y
 QdN/SXHCMfPzPyk06SxzDbnWLBHY9XQUAHT+eu+Ba6a4X/WgvrlAiForNz593ZB1Fa0c
 XDU1eLYd4ZD8CTtNkOXs4OtiDCnIt78E21b2p3cYcGp0ROKfWZANoOqncXT8SnLm/iZE
 ejVhf2v6JOQxKjqnvXKJOs5f71F4Rvm5GziHKL5wIp9Z4KhZ8eteoB/4X9TtGgg1Tru6
 sSMIZSyjUmfS9m6Fn93Mhluql/86Ixkz0Jn/sclAjEEE+TAnV/UhAjR8cKCyy8KD0PbL
 HaGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V6dEn0t/sLaJt7G2OuwYBXzSQVSrueR0BkyQQmdFtqA=;
 b=d7ZAUv/J+8Qgd0TFXcNQNqNpPvIsLXlVMkc9wfQ2gSFFV3z9ujYVO1HibJHHo6r8vY
 eXCyrYB7gSVI9UoT9Ow0PSqze/5lgheUqEwb+HMSlP5PFdwQs3SermDUbAWBN2jGkXj8
 hhiTVXVyDAtzX6OGPkPOKH3Haq2G3krXOfvloGMu0xyKeC8UiflZHJdmoKwKKiFKGD+n
 DVjKU5XlauEdx2EyRqmpPWtyKdCrrvqSeLQA7smLJdmR8MkFU3kVm3hDcEBSoLvjVYZM
 t2tAv8jfHyGESAkCVNpat2LYQv2+Ud2bpVlToM9Qya22LJ6+onLAC3+PA5U5maMtXyO6
 +qiw==
X-Gm-Message-State: APjAAAXOmUWvJTg8d2Y0VW1DCEnSoQhVV3paYyi3GrFQHAeU3bqsWjso
 +nTLYYRMPv6fQ1g0uE1COSFr7l/0a6syEAY1Uc+TLA==
X-Google-Smtp-Source: APXvYqyqyZz1DiANEg1r6LyLw8eqqCstxQ6bdGNtQF4anfCaAYxS4KsZVMpugpZ1NvMrSvT1bpZbLkVs/SZTbxn1IWk=
X-Received: by 2002:a5d:640d:: with SMTP id z13mr14090366wru.68.1573304230865; 
 Sat, 09 Nov 2019 04:57:10 -0800 (PST)
MIME-Version: 1.0
References: <20191108114841.1343-1-freifunk@adrianschmutzler.de>
 <20191108114841.1343-3-freifunk@adrianschmutzler.de>
 <CAOiHx=naOdB-EKxGy4Ks06k9iZHAj0WmzFM-gTMc1LauG8heqA@mail.gmail.com>
 <003801d596ed$74496400$5cdc2c00$@adrianschmutzler.de>
In-Reply-To: <003801d596ed$74496400$5cdc2c00$@adrianschmutzler.de>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sat, 9 Nov 2019 13:57:17 +0100
Message-ID: <CAOiHx=m5hgPC09U_eMMX88G=TBG42SfLyQt-XTB93at540cuBA@mail.gmail.com>
To: mail@adrianschmutzler.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_045712_355514_4BA01B7F 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] base-files: rename SSID with EUI of
 mac address
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
 Rosy Song <rosysong@rosinson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, 9 Nov 2019 at 12:04, <mail@adrianschmutzler.de> wrote:
>
> Hi,
>
> > -----Original Message-----
> > From: Jonas Gorski [mailto:jonas.gorski@gmail.com]
> > Sent: Samstag, 9. November 2019 10:37
> > To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> > Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>; Rosy
> > Song <rosysong@rosinson.com>
> > Subject: Re: [OpenWrt-Devel] [PATCH 2/2] base-files: rename SSID with EUI
> > of mac address
> >
> > On Fri, 8 Nov 2019 at 12:49, Adrian Schmutzler
> > <freifunk@adrianschmutzler.de> wrote:
> > >
> > > If the label MAC address is provided for a device, the default SSID
> > > will be set to contain the EUI of this address, e.g. OpenWrt-ddeeff.
> > >
> > > With multiple routers, this will help the user to identify his device
> > > based on the MAC address printed on the device.
> > >
> > > If no label MAC address is specified, this will use "OpenWrt" as done
> > > before.
> > >
> > > Using a uci-defaults script for this is necessary as mac80211.sh is
> > > executed before /etc/board.json is created, so label MAC addresses set
> > > in 02_network would not be available there.
> >
> > Unfortunately since we detect wifi async these days this is quite racy, and
> > there is no guarantee /etc/config/wireless is fully populated by the time the
> > uci defaults are run. E.g. mwl8k takes quite a while since it uses different
> > firmwares for STA and AP modes, and it needs to re-initialize to switch
> > between them (triggered by by mac80211.sh trying to detect the supporte
> > features).
>
> So, in the end, it might be like Manuel Giganto suggested in GitHub and one might
> either have to wait in mac80211.sh until /etc/board.json is available (ugly) or
> just put the same code (the few lines of SSID change) in both locations (uci_defaults AND mac80211.sh).

How about just generating the board.json at an earlier time before
loading the wifi drivers, so it's always there once mac80211.sh runs?

We already generate it in preinit (unless failsafe is disabled) to
configure the switch and find the proper lan if, we might as well make
it unconditional and then rely on it for mac80211.sh.


Regards
Jonas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
