Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA681E0EEF
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 15:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nT2RqEWaRhyFDItgjVgdIJ5p46oJhqtIoAMjdun6DQ=; b=U4ajNbUYBmB1fG
	xr1LqdcDW/AYNXXB/UWkDHcKkYBZIBx9MBVRhyhIAJ8/ndQpJbblsW2ZkhFsUiYj1ZUDEsK9ptx8N
	gnwuZC6XH72C/RU4aw3zLqviCAqW1KeySga94NSkqR087fPw2NoH+GXVkaXjxNXWAB1ND/MBzNaRp
	FYo/0p/jzeK5wsYRRgfn0ZaZTDMQ8tXerDHIevRPmmE3As8BAEmRyvGhgSPUbTzFogWni433C6367
	gm7GzEj+k5p08S7kS939bWhvdMYYKb1KHzXITP90SIk5ZpKI9VF1ScGJAuIoHKdbTzblxiViX3m5l
	Zc6jnhGuztJlQLH9+P+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdCj1-0007h5-SX; Mon, 25 May 2020 13:01:03 +0000
Received: from mail-il1-x133.google.com ([2607:f8b0:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdCin-0007gQ-GI
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 13:00:57 +0000
Received: by mail-il1-x133.google.com with SMTP id m6so17219269ilq.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 May 2020 06:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aleksander-es.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Pjm+lhvcf4X/KZ3s5z9Os7t+XUh1jCPoPch2Ol7Q17Q=;
 b=mbiwGYx9bKo0AtTYn6F722i/A1IOJL1qz2/uQXwfMud/o1f890XKnt4jD78XjaraWI
 TvnpQacwPuWbF+X7A45g5EJtTPLHmOQrjLzdTXH5KNcnvFXaASlFGhH5u3PbwzscRw4u
 3oH9Gf9qeIzJpU5oeZn+Jqwi1/6WvBPeqSMl8+Hoan3AsWDVO2Wc09XJ2duuRnzFJ55l
 Nt7nMUoCfHIfGK2zFmAylPSpqPvWgXzOWOlqq4u++z7M35rPovfyG4XBYEpzPWEhgWcF
 utRYwmVCEPQGVEAUPqBKxefI84FB3edpjQb+T+AnVMxijSWINmEFqxLZ0ZP1CnZ985y/
 cvvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Pjm+lhvcf4X/KZ3s5z9Os7t+XUh1jCPoPch2Ol7Q17Q=;
 b=uierHcUi4icvXjliE4vgBoQAnwKlUqCc3EbDgQ+Eb0rW11SAL7W1kfpbErUUnO/pZr
 WFprjF61snDoQBxtHNFhzFmXR+fk+VGigv0Cd5RocmChm2IVbrB5dxbNJACo0AgFS6DT
 EJTEg89VTEHRY3fVkiJzkGflPCDo4lPhTTtAUgvLmgi7xRhwJ8O9tVt87WhtBP4a54eC
 /QPxsdBJbk2++zDOWCsVfXGRhZ8DjEnpR/OiwHmiA2JYcpm/mZms9wO2T101scxec8YX
 0rJryQFZ9vLgj8abbD6hD1FZDwY7JjmlNwE8foBJJjSDsTjNq94YgkzybfVuWaCxnrx5
 rf8g==
X-Gm-Message-State: AOAM530i0r5GdvpapWci4OXMbz7Rke8CV1ZRzkFsD46QSu3UTAKvMi0I
 vo4MGzqRaZcYelvNCHUoEWcg198n+dB4v5XbNikAbCSlL90Ovw==
X-Google-Smtp-Source: ABdhPJzYGIKvjMACS8+Z80Rmsk6Cu/oGHdodfWZ/FWEsHyGEcvaU4XnbThg61IxrptS+LAjaKQXYDlB0zn5LtJ1lV6Q=
X-Received: by 2002:a92:de02:: with SMTP id x2mr25136198ilm.267.1590411648097; 
 Mon, 25 May 2020 06:00:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAAP7ucKJ78gCg1y+60afcL1rYw4XpHxwwdZv97DweGLesaNfCg@mail.gmail.com>
 <CAJQUmm6vjAkiGA+u_CRUG40=r_TBpJJJwUfP5uKdoOpjuN56Kg@mail.gmail.com>
 <CAAP7ucKpK5V2Dc7XsG=NwfuUpDx962fgnJWZpUaSNgYz57f0YA@mail.gmail.com>
In-Reply-To: <CAAP7ucKpK5V2Dc7XsG=NwfuUpDx962fgnJWZpUaSNgYz57f0YA@mail.gmail.com>
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Mon, 25 May 2020 15:00:37 +0200
Message-ID: <CAAP7uc+1=pHOG6N-HUoww0_v-EbY9iaoERFZRCqEw70JeJF5pA@mail.gmail.com>
To: Michael Jones <mike@meshplusplus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_060054_833421_32F99E38 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:133 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] netifd: per-interface MTU settings vs per-route
 MTU settings?
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hey,

> >> There's an ongoing discussion in the ModemManager package in github
> >> related to how the MTU may be configured in the network interface
> >> based on what the MM bearer object reports:
> >> https://github.com/openwrt/packages/issues/11383
> >>
> >> E.g.:
> >>
> >> $ ip route show
> >> default via 25.225.105.222 dev wwan0 proto static src 25.225.105.221 mtu 1430
> >>
> >> Looks like the protocol handler implementation for netifd may allow
> >> setting the MTU to the routes associated with the network interface,
> >> instead of assigning the MTU value to the interface itself. Are both
> >> methods completely equivalent? Is there any reason to avoid setting
> >> the MTU in the interface when using netifd, or just not implemented
> >> yet?
> >>
> >> Cheers!
> >>
> >> --
> >> Aleksander
> >> https://aleksander.es
> >
> >
> >
> >
> > I'm actually not aware of any method to set the interface MTU via netifd that isn't a UCI setting.
> >
>
> While running as a protocol handler under netifd, we can do this while
> setting up the default route:
>   proto_add_ipv4_route "0.0.0.0" "0" "${gateway}" "${address}"
> "${metric}" "${mtu}"
> And the given ${mtu} will be set for the route created.
>
> What we're looking for is a way to setup the MTU for the whole network
> interface from within the protocol handler automatically.
>

Other protocol handlers, like uqmi, are also able to setup the MTU,
and instead of doing it via proto_send_update, they just do it like
this:

        [ -n "$mtu" ] && {
                echo "Setting MTU to $mtu"
                /sbin/ip link set dev $ifname mtu $mtu
        }

I guess we can do the same in the ModemManager protocol handler.

-- 
Aleksander
https://aleksander.es

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
