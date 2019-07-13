Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C4E67BEE
	for <lists+openwrt-devel@lfdr.de>; Sat, 13 Jul 2019 22:39:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NRZlcRAUtTJ2v8tdFfP8oZWQXNjKgjwf7jWkvlwdvx0=; b=dJXEHTXZ1TfQoY
	CLG3XB7JOCjYcn4mdL0i15jX+wnncHQ6K5XhdSSn7mLi27WWTNM25qI/a30pZnU5PesQ5h0+GxqaZ
	o2aly0WSmhJbOsT5H7O0BBUtjpt/X2L76/8RnV+boufyxPEFKE2jh6cbqF392J9T092OW2yGxFBDp
	7dYOwDYtaP3+ECQNLK7c0ZoM87Ux/46VLez6/22O1quFNzh3lVKsH6eVGSYnZt4ZP11KsBwaTqEA2
	YYy/pSn0hQWaZHxIt3r6V54lGORtHF75I8twPnhidm2/Z3/1oJ00viUfGLXZ3veS2LRQg/Zwv5JFg
	KdDOtJZC6ZwweeIMWyBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmOnJ-0000jj-8m; Sat, 13 Jul 2019 20:38:57 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmOnA-0000jJ-4o
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jul 2019 20:38:49 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so5731089pff.9
 for <openwrt-devel@lists.openwrt.org>; Sat, 13 Jul 2019 13:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KPFwpXKcCQ3EMczKagkLEuqG22SCS0dX8wY7zkrNFfY=;
 b=iXxdK1KXSUpkEBxB+kL1en3mb2yFqoDaIySkr9NGHCZUMlSbkC1utLu9M0af3c1ahh
 AA+R7uAnrzSRC8N4gRQbI9m21x4assRSSdvwfGGjEFAWsG2VlHAm85RtkuCZJB/GmYTm
 52nJaOBgC38BnaHt7y4tC6xjgqSa14rXwwnopGNvW2fzt7WJ7KBja2ZE/FQjmhbASCml
 gTlkghD3vkz5mlVGYlYWmbu73/6Uc0GGshDvF1eazwTxUnXvw3fGjQHi3j0FVBSP/bjS
 eoYLTfHmqs87QGd3VAH4z1oRBmBJ6+VW+vDNCHNjH0NX1Y6LeNNPNhG88RiyxxNAHSwu
 Fkkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KPFwpXKcCQ3EMczKagkLEuqG22SCS0dX8wY7zkrNFfY=;
 b=gLRSt7BTLKL1r7SXwCNEnnGBX1BpuohRhlwPid6OgKqoqiusGYfc2S/xQs4PgELU2g
 F56aJt+LzR6EiRnNZIGoiZKmXLf66ZylDFVBC3otva1fQUkHBBwZ+Z5RRBomK12XyRFJ
 kzjEEjvMzPt2S4rwgaUbqTw0ETCsETBc5xu5tU/Zs8+EGEZtQl9jUiPvZDlsEn/lNjWC
 NBKkZhn2pDvsECvwizsq/Xt5pSoJ/O82t+mOR2LBbSOjM++qO4XRy8awbtL/1tHOawxw
 JxHT19LePcgn+ZPuePtiMCbV/1bl/vSdCdwhChahrm3mD0UK31AQ+f+2+JQiVuXbKNKe
 BqMw==
X-Gm-Message-State: APjAAAXvvRnstXcEm2htD+0DRfwQTOMhgnX1ioQz5hObApli99EUrlZc
 Dcg2HyiD12BbexFh5P+cAjI=
X-Google-Smtp-Source: APXvYqz9Zh0IRJnIsPI0ob27MwSE4SKozmD6RAIqhv25vxQRksCM76Wt7pLNRicubxz6W9MaXCigXg==
X-Received: by 2002:a17:90a:5806:: with SMTP id
 h6mr19520142pji.126.1563050326642; 
 Sat, 13 Jul 2019 13:38:46 -0700 (PDT)
Received: from [10.230.28.130] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id h9sm12388907pgh.51.2019.07.13.13.38.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 13 Jul 2019 13:38:45 -0700 (PDT)
To: Linus Walleij <linus.walleij@linaro.org>, Hauke Mehrtens <hauke@hauke-m.de>
References: <20190712060734.9824-1-linus.walleij@linaro.org>
 <0fec8249-aae5-55b3-4bb7-4b83d829842d@hauke-m.de>
 <CACRpkdYWfrcAAvzOMvN6gq5rp6vE-Ot3RvwDJ3LPyHGs5zeCMw@mail.gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <c6151d84-a5c0-805e-c02c-6b0fa3f9a25f@gmail.com>
Date: Sat, 13 Jul 2019 13:38:41 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CACRpkdYWfrcAAvzOMvN6gq5rp6vE-Ot3RvwDJ3LPyHGs5zeCMw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_133848_218721_C648DF13 
X-CRM114-Status: GOOD (  23.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: Adrian Alonso <aalonso@freescale.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



On 7/13/2019 4:04 AM, Linus Walleij wrote:
> On Fri, Jul 12, 2019 at 8:57 AM Hauke Mehrtens <hauke@hauke-m.de> wrote:
>> On 7/12/19 8:07 AM, Linus Walleij wrote:
> 
>>> +     # These are all connected to eth1 thru VSC7385
>>> +     ucidef_set_interfaces_lan_wan "eth1 lan1 lan2 lan3 lan4" "eth0"
>>
>> This will create a bridge over eth1, lan1, lan2, lan3 and lan4, but I
>> think you do not have to put eth1 into this bridge, it should be
>> sufficient to have all the lanX in it.
> 
> It is really puzzling to me too :(

drivers/net/dsa/vitesse-vsc73xx.c returns DSA_TAG_PROTO_NONE for the
tagging protocol, which means that the DSA slave devices are only
control devices they are not used by the data-path (which requires an
appropriate tagging protocol to allow differentiating the Ethernet
frames on a per-port basis). If you supported a different tagging
protocol, then you would not be able to enslave the DSA master device
(eth1) into the bridge, because that would conflict with the bridge's
rx_handler, see 8db0a2ee2c6302a1dcbcdb93cb731dfc6c0cdb5e ("net: bridge:
reject DSA-enabled master netdevices as bridge members")

Your second sequence is more in line with what you should do, see the
recent documentation examples from Benedikt:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/networking/dsa/configuration.rst

> 
> What I notice is that if I do this everything works fine and if eth1
> is not included it doesn't.
> 
> This sequence also works fine:
> ifconfig eth1 169.254.1.2 netmask 255.255.255.0 up
> ifconfig lan1 up
> ifconfig lan2 up
> ifconfig lan3 up
> ifconfig lan4 up
> 
> I think the reason is that the IP address is not assigned to
> eth1 (the CPU port towards the switch/DSA).
> 
> Maybe other DSA switches are better with this? My dmesg
> looks like this with eth1 included in the lan-facing interfaces:
> 
> [   52.704396] gemini-ethernet-port 6000c000.ethernet-port eth1: link
> flow control: both
> [   53.046012] br-lan: port 1(eth1) entered blocking state
> [   53.170160] br-lan: port 1(eth1) entered disabled state
> [   53.253455] device eth1 entered promiscuous mode
> [   53.299150] IPv6: ADDRCONF(NETDEV_UP): br-lan: link is not ready
> [   53.388545] vsc73xx spi0.0: enable port 0
> [   53.446029] vsc73xx spi0.0 lan1: configuring for phy/gmii link mode
> [   53.526483] br-lan: port 2(lan1) entered blocking state
> [   53.594789] br-lan: port 2(lan1) entered disabled state
> [   53.665816] device lan1 entered promiscuous mode
> [   53.728728] br-lan: port 1(eth1) entered blocking state
> [   53.760176] br-lan: port 1(eth1) entered forwarding state
> [   53.874449] IPv6: ADDRCONF(NETDEV_CHANGE): br-lan: link becomes ready
> [   54.000353] vsc73xx spi0.0: enable port 1
> [   54.056099] vsc73xx spi0.0 lan2: configuring for phy/gmii link mode
> [   54.142223] br-lan: port 3(lan2) entered blocking state
> [   54.214679] br-lan: port 3(lan2) entered disabled state
> [   54.266496] device lan2 entered promiscuous mode
> [   54.308593] vsc73xx spi0.0: enable port 2
> [   54.335298] vsc73xx spi0.0 lan3: configuring for phy/gmii link mode
> [   54.377279] br-lan: port 4(lan3) entered blocking state
> [   54.444497] br-lan: port 4(lan3) entered disabled state
> [   54.515791] device lan3 entered promiscuous mode
> [   54.588687] vsc73xx spi0.0: enable port 3
> [   54.646048] vsc73xx spi0.0 lan4: configuring for phy/gmii link mode
> [   54.726991] br-lan: port 5(lan4) entered blocking state
> [   54.785910] vsc73xx spi0.0 lan1: Link is Up - 1Gbps/Full - flow control rx/tx
> [   54.844478] br-lan: port 5(lan4) entered disabled state
> [   54.915911] device lan4 entered promiscuous mode
> [   54.976533] br-lan: port 2(lan1) entered blocking state
> [   55.007954] br-lan: port 2(lan1) entered forwarding state
> 
> After this I can ping the host:
> # ping 169.254.1.1
> PING 169.254.1.1 (169.254.1.1): 56 data bytes
> 64 bytes from 169.254.1.1: seq=0 ttl=64 time=2.049 ms
> 64 bytes from 169.254.1.1: seq=6 ttl=64 time=0.913 ms
> 64 bytes from 169.254.1.1: seq=25 ttl=64 time=1.268 ms
> And the host can ping the device:
> $ ping 169.254.1.2
> PING 169.254.1.2 (169.254.1.2) 56(84) bytes of data.
> 64 bytes from 169.254.1.2: icmp_seq=1 ttl=64 time=1.12 ms
> 64 bytes from 169.254.1.2: icmp_seq=2 ttl=64 time=0.582 ms
> 64 bytes from 169.254.1.2: icmp_seq=3 ttl=64 time=0.576 ms
> 64 bytes from 169.254.1.2: icmp_seq=4 ttl=64 time=0.654 ms
> 
> But if I remove eth1 from the LAN facing interfaces it looks like
> this:
> 
> [   52.433253] gemini-ethernet-port 6000c000.ethernet-port eth1: link
> flow control: both
> [   52.769503] IPv6: ADDRCONF(NETDEV_UP): eth1: link is not ready
> [   52.925178] device eth1 entered promiscuous mode
> [   52.987672] vsc73xx spi0.0: enable port 0
> [   53.014460] vsc73xx spi0.0 lan1: configuring for phy/gmii link mode
> [   53.054754] br-lan: port 1(lan1) entered blocking state
> [   53.086323] br-lan: port 1(lan1) entered disabled state
> [   53.119857] device lan1 entered promiscuous mode
> [   53.160541] IPv6: ADDRCONF(NETDEV_UP): br-lan: link is not ready
> [   53.250938] vsc73xx spi0.0: enable port 1
> [   53.309220] vsc73xx spi0.0 lan2: configuring for phy/gmii link mode
> [   53.394269] IPv6: ADDRCONF(NETDEV_CHANGE): eth1: link becomes ready
> [   53.476271] br-lan: port 2(lan2) entered blocking state
> [   53.543459] br-lan: port 2(lan2) entered disabled state
> [   53.604655] device lan2 entered promiscuous mode
> [   53.686932] vsc73xx spi0.0: enable port 2
> [   53.744974] vsc73xx spi0.0 lan3: configuring for phy/gmii link mode
> [   53.820229] br-lan: port 3(lan3) entered blocking state
> [   53.893505] br-lan: port 3(lan3) entered disabled state
> [   53.964682] device lan3 entered promiscuous mode
> [   54.047383] vsc73xx spi0.0: enable port 3
> [   54.087228] vsc73xx spi0.0 lan4: configuring for phy/gmii link mode
> [   54.128009] br-lan: port 4(lan4) entered blocking state
> [   54.160537] br-lan: port 4(lan4) entered disabled state
> [   54.194726] device lan4 entered promiscuous mode
> [   54.284743] vsc73xx spi0.0 lan1: Link is Up - 1Gbps/Full - flow control rx/tx
> [   54.453740] br-lan: port 1(lan1) entered blocking state
> [   54.485220] br-lan: port 1(lan1) entered forwarding state
> [   54.883281] IPv6: ADDRCONF(NETDEV_CHANGE): br-lan: link becomes ready
> 
> This kind of "should work".
> 
> But now I can't ping anything. As you can see what is missing,
> since the eth1 is no longer part of the bridge, is this:
> [   53.046012] br-lan: port 1(eth1) entered blocking state
> [   53.170160] br-lan: port 1(eth1) entered disabled state
> 
> I wonder if it is some bug in my DSA driver or some basic assumption that
> the network tools are making about the default state or so :/
> 
> I guess I keep digging around in it
> 
> Yours,
> Linus Walleij
> 

-- 
Florian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
