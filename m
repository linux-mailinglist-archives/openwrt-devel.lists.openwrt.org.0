Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35025679D4
	for <lists+openwrt-devel@lfdr.de>; Sat, 13 Jul 2019 13:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CyxcFe3PbbacYrHd1IAcMWZeydiQ5rMWyh1JCBMqccE=; b=p0ynrvlkVD6Q6L
	w/w0nJMS2yn8GxjVfK+UIEIkP4i3PpqleAwSWtxhLlwYCKkzIDQ+Db1NAWt/zkcUHzqRbJ7GM3IJ0
	uTNh9kn66KaTWyJ8RGuaTuzJyfhJx6KUcPr/l4xDnd0Vs7PGzaVzNrD7DtzWWa+DaOZLNuQwzYdpi
	Q5sUjq+8N2zWpL4rqP23cQtYjI3YbCyoqhMjFy4naPFI2GVN+lm8a5AqYbtUeaxJP0gbnfe6LvjRV
	AoUK/SRN7A6RUpXhLyDyJZu8OK1W79Rnc41vNl6lWjCKuZckMY1lo1lqomWlXibvohBdTCVW0M0LG
	Vfg77I7yBtmR5qUPnPCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmFpS-0006PG-Qh; Sat, 13 Jul 2019 11:04:34 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmFpM-0006Ow-CZ
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jul 2019 11:04:30 +0000
Received: by mail-lj1-x242.google.com with SMTP id r9so11722510ljg.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 13 Jul 2019 04:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A+sA4i9w/ahsNrv+ob7ssv1h9PEESNtOzRsXHGa4EhQ=;
 b=KtcDvkeSlYHDUhmkO9inQh90/0rUPy+qpvaWGr6z0XjuIQXtROE2fQXXkfYZyxxwQH
 UNTNQIKka6CiTaGz2D/mvTq3uEdCbEIS7h3t3LCFA82hj0FH8Jsoqrs5cZk9fVL3oVJC
 xZ0kiDOF8kv0mWoC67bmcSDJ5GakKEea21hPipxw9Fq7P2qeL5H8Gaov3VcCYXzYZZE6
 0jMldL8yoUwsnNDz94/v8T6FB4lKXOF/gKzs8CZuqFpvGPuQC18YikdWI63HFYpoyfhs
 MJmsbm20bFhb09Xa45STsrR77XLSuAItrw+ZeYje2b8aTVLWAfHuGDI6GsxbVRilI072
 xotA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A+sA4i9w/ahsNrv+ob7ssv1h9PEESNtOzRsXHGa4EhQ=;
 b=OeLeIJLqPKAA4pvqS4b7hKqG+XN1eELc1LsWgOi9TlxMh/LRUMcPdJZb6vhfLb1dlw
 I/RmEXGSuMO1JjduLtO5YLPtFbzBb/JHb9vsQGkBdbhZ154QSWv2BU7d+ctaN42OavLg
 uVG4YQVK1HKKQ7w4iArIlO3q24+Qxcd5J8mPPd9UxrbDp47GZsvspl6ZIfbEkGg94TqB
 j+TPpxMephm725Y2kyk6T3PEU6Y8bX7HH0/LUddu7tYMLZVVKr0AatciuZInVQksB8rE
 GScaT75EoIddsV9LIaQuNYgWQi/oNtASD0uagUkgRd3z7l4nayB/8G1cQuhkcCrkMfHN
 PwXA==
X-Gm-Message-State: APjAAAVHAaN9pvvmL4nainl5UtW1kAn8DUqg/4zlgd/l1Zg+HVIHP9Xc
 dpmCZwS6MrNKxJC75oNCaIjD+ry179TFBazzQkqL/A==
X-Google-Smtp-Source: APXvYqzkybhbV2v4GLSenlWhXLmUV9Z4r3lm+JZEIPmac1Cxa58M+hKr9dj8cO3Nqeq4QgYTlLEG1XMr3tJ8/PlCyP0=
X-Received: by 2002:a2e:781a:: with SMTP id t26mr8551366ljc.28.1563015865735; 
 Sat, 13 Jul 2019 04:04:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190712060734.9824-1-linus.walleij@linaro.org>
 <0fec8249-aae5-55b3-4bb7-4b83d829842d@hauke-m.de>
In-Reply-To: <0fec8249-aae5-55b3-4bb7-4b83d829842d@hauke-m.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 13 Jul 2019 13:04:14 +0200
Message-ID: <CACRpkdYWfrcAAvzOMvN6gq5rp6vE-Ot3RvwDJ3LPyHGs5zeCMw@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_040428_494170_34F3314F 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] gemini: Bring up DSA switches
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Adrian Alonso <aalonso@freescale.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, Jul 12, 2019 at 8:57 AM Hauke Mehrtens <hauke@hauke-m.de> wrote:
> On 7/12/19 8:07 AM, Linus Walleij wrote:

> > +     # These are all connected to eth1 thru VSC7385
> > +     ucidef_set_interfaces_lan_wan "eth1 lan1 lan2 lan3 lan4" "eth0"
>
> This will create a bridge over eth1, lan1, lan2, lan3 and lan4, but I
> think you do not have to put eth1 into this bridge, it should be
> sufficient to have all the lanX in it.

It is really puzzling to me too :(

What I notice is that if I do this everything works fine and if eth1
is not included it doesn't.

This sequence also works fine:
ifconfig eth1 169.254.1.2 netmask 255.255.255.0 up
ifconfig lan1 up
ifconfig lan2 up
ifconfig lan3 up
ifconfig lan4 up

I think the reason is that the IP address is not assigned to
eth1 (the CPU port towards the switch/DSA).

Maybe other DSA switches are better with this? My dmesg
looks like this with eth1 included in the lan-facing interfaces:

[   52.704396] gemini-ethernet-port 6000c000.ethernet-port eth1: link
flow control: both
[   53.046012] br-lan: port 1(eth1) entered blocking state
[   53.170160] br-lan: port 1(eth1) entered disabled state
[   53.253455] device eth1 entered promiscuous mode
[   53.299150] IPv6: ADDRCONF(NETDEV_UP): br-lan: link is not ready
[   53.388545] vsc73xx spi0.0: enable port 0
[   53.446029] vsc73xx spi0.0 lan1: configuring for phy/gmii link mode
[   53.526483] br-lan: port 2(lan1) entered blocking state
[   53.594789] br-lan: port 2(lan1) entered disabled state
[   53.665816] device lan1 entered promiscuous mode
[   53.728728] br-lan: port 1(eth1) entered blocking state
[   53.760176] br-lan: port 1(eth1) entered forwarding state
[   53.874449] IPv6: ADDRCONF(NETDEV_CHANGE): br-lan: link becomes ready
[   54.000353] vsc73xx spi0.0: enable port 1
[   54.056099] vsc73xx spi0.0 lan2: configuring for phy/gmii link mode
[   54.142223] br-lan: port 3(lan2) entered blocking state
[   54.214679] br-lan: port 3(lan2) entered disabled state
[   54.266496] device lan2 entered promiscuous mode
[   54.308593] vsc73xx spi0.0: enable port 2
[   54.335298] vsc73xx spi0.0 lan3: configuring for phy/gmii link mode
[   54.377279] br-lan: port 4(lan3) entered blocking state
[   54.444497] br-lan: port 4(lan3) entered disabled state
[   54.515791] device lan3 entered promiscuous mode
[   54.588687] vsc73xx spi0.0: enable port 3
[   54.646048] vsc73xx spi0.0 lan4: configuring for phy/gmii link mode
[   54.726991] br-lan: port 5(lan4) entered blocking state
[   54.785910] vsc73xx spi0.0 lan1: Link is Up - 1Gbps/Full - flow control rx/tx
[   54.844478] br-lan: port 5(lan4) entered disabled state
[   54.915911] device lan4 entered promiscuous mode
[   54.976533] br-lan: port 2(lan1) entered blocking state
[   55.007954] br-lan: port 2(lan1) entered forwarding state

After this I can ping the host:
# ping 169.254.1.1
PING 169.254.1.1 (169.254.1.1): 56 data bytes
64 bytes from 169.254.1.1: seq=0 ttl=64 time=2.049 ms
64 bytes from 169.254.1.1: seq=6 ttl=64 time=0.913 ms
64 bytes from 169.254.1.1: seq=25 ttl=64 time=1.268 ms
And the host can ping the device:
$ ping 169.254.1.2
PING 169.254.1.2 (169.254.1.2) 56(84) bytes of data.
64 bytes from 169.254.1.2: icmp_seq=1 ttl=64 time=1.12 ms
64 bytes from 169.254.1.2: icmp_seq=2 ttl=64 time=0.582 ms
64 bytes from 169.254.1.2: icmp_seq=3 ttl=64 time=0.576 ms
64 bytes from 169.254.1.2: icmp_seq=4 ttl=64 time=0.654 ms

But if I remove eth1 from the LAN facing interfaces it looks like
this:

[   52.433253] gemini-ethernet-port 6000c000.ethernet-port eth1: link
flow control: both
[   52.769503] IPv6: ADDRCONF(NETDEV_UP): eth1: link is not ready
[   52.925178] device eth1 entered promiscuous mode
[   52.987672] vsc73xx spi0.0: enable port 0
[   53.014460] vsc73xx spi0.0 lan1: configuring for phy/gmii link mode
[   53.054754] br-lan: port 1(lan1) entered blocking state
[   53.086323] br-lan: port 1(lan1) entered disabled state
[   53.119857] device lan1 entered promiscuous mode
[   53.160541] IPv6: ADDRCONF(NETDEV_UP): br-lan: link is not ready
[   53.250938] vsc73xx spi0.0: enable port 1
[   53.309220] vsc73xx spi0.0 lan2: configuring for phy/gmii link mode
[   53.394269] IPv6: ADDRCONF(NETDEV_CHANGE): eth1: link becomes ready
[   53.476271] br-lan: port 2(lan2) entered blocking state
[   53.543459] br-lan: port 2(lan2) entered disabled state
[   53.604655] device lan2 entered promiscuous mode
[   53.686932] vsc73xx spi0.0: enable port 2
[   53.744974] vsc73xx spi0.0 lan3: configuring for phy/gmii link mode
[   53.820229] br-lan: port 3(lan3) entered blocking state
[   53.893505] br-lan: port 3(lan3) entered disabled state
[   53.964682] device lan3 entered promiscuous mode
[   54.047383] vsc73xx spi0.0: enable port 3
[   54.087228] vsc73xx spi0.0 lan4: configuring for phy/gmii link mode
[   54.128009] br-lan: port 4(lan4) entered blocking state
[   54.160537] br-lan: port 4(lan4) entered disabled state
[   54.194726] device lan4 entered promiscuous mode
[   54.284743] vsc73xx spi0.0 lan1: Link is Up - 1Gbps/Full - flow control rx/tx
[   54.453740] br-lan: port 1(lan1) entered blocking state
[   54.485220] br-lan: port 1(lan1) entered forwarding state
[   54.883281] IPv6: ADDRCONF(NETDEV_CHANGE): br-lan: link becomes ready

This kind of "should work".

But now I can't ping anything. As you can see what is missing,
since the eth1 is no longer part of the bridge, is this:
[   53.046012] br-lan: port 1(eth1) entered blocking state
[   53.170160] br-lan: port 1(eth1) entered disabled state

I wonder if it is some bug in my DSA driver or some basic assumption that
the network tools are making about the default state or so :/

I guess I keep digging around in it

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
