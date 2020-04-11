Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AA21A5238
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 Apr 2020 14:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:Mime-Version:Date:Message-ID:
	References:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I2ftA5G0ORamEZZhNz15ljfOZBfqONnB/qfZitVVZiM=; b=AZWyg/GDLbSXdVptoFY+nl8FK
	vehUBap0S92Q/7xnKWmiA3QIkM1OvPFR3AiO0VX7JiUthSct2ZN8/6kM9PkL+niAuOZiKMjc1bkt8
	Do+w18GLfkb1ObtdrW8eyT3s0nXvdGWLYquSksAO7/HXlj9PrnRqx8jAUtumMrczrsVN3vP9Qoy//
	6P7IG8JXyovehbq+4quNlKfyPfxujq4100USYK6kL4foaTdHHzZ2W4QLxD9o/9w2fJbFhSEGOEilO
	BHfNO2tqwYKl4NI/Vpu+vGtUm5g/QyuNT3uFvLnriTI5CjJuBQWk9CW1gN8d38jnrg8sRF8cGLtm+
	X0Ba0y4Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNFfI-0005Zr-5J; Sat, 11 Apr 2020 12:55:16 +0000
Received: from [2a01:4f8:1c0c:7572:2000:242:ac1a:6] (helo=mail.couprie.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNFf1-0005QX-AB
 for openwrt-devel@lists.openwrt.org; Sat, 11 Apr 2020 12:55:01 +0000
X-Virus-Scanned: Yes
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=couprie.net; s=mail;
 t=1586609692; bh=dcLNaW2XFvUMcafvt5M23CqojwbxBwNbtYMYZlpUYK8=;
 h=Subject:From:To:References:In-Reply-To;
 b=KS56EO60kkQRJ+ApvLbDV8WAMP7DepMifIdkeNam4y/Cosij4MOpdjle/4Dp55k4/
 ZW8mAyBnNADTpvpqH6GE4+n6I4nE4DpibXcvEv+HK6Q/ZU2gwEIZI7wt9aKKjYLUr/
 YUy0RZx6rSMJbZxjP2yz0k5CgeAos1JXW9ENaIDsFkLGwJ/dQ6ocpdXX3u5zDdKdkc
 2dMpaG90B5ROa/mcC3VuP4ahjjEZkAxScbjhV/y2TwCDC0VaUJfC+Tifaeg7UqIyVc
 Wb4jR+RdyEzxN737k9Dt7D7YN8qke3I5+ecA+SGjBWGnUysgWPfsiHwQa3KTDY27I6
 8RW/FymzfDDjw==
From: Perry Couprie <perry@couprie.net>
To: openwrt-devel@lists.openwrt.org
References: <65ed17fe-91cd-5398-5bdf-e77bf1324d76@couprie.net>
Message-ID: <7c5c9d6f-732f-1714-29b2-d2c6e4a0399f@couprie.net>
Date: Sat, 11 Apr 2020 14:54:52 +0200
Mime-Version: 1.0
In-Reply-To: <65ed17fe-91cd-5398-5bdf-e77bf1324d76@couprie.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_055459_503737_1225497C 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] umdns not listening on any interface (openwrt
 trunk)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

When i try the following on openwrt trunk, it works:

ubus call umdns set_config '{ "interfaces": [ "wan23,lan23" ] }'
ubus call umdns set_config '{ "interfaces": [ "wan23,lan23" ] }'
ubus call umdns set_config '{ "interfaces": [ "wan23,lan23" ] }'
ubus call umdns set_config '{ "interfaces": [ "wan23,lan23" ] }'
ubus call umdns set_config '{ "interfaces": [ "wan23,lan23" ] }'
ubus call umdns set_config '{ "interfaces": [ "wan23,lan23" ] }'
ubus call umdns set_config '{ "interfaces": [ "wan23,lan23" ] }'
ubus call umdns set_config '{ "interfaces": [ "wan23,lan23" ] }'
ubus call umdns set_config '{ "interfaces": [ "br-lan" ] }'

Woonkamer:~# netstat -lapn|grep umdns
udp 0 0 224.0.0.251:5353 0.0.0.0:* 15847/umdns
udp 0 0 192.168.100.100:5353 0.0.0.0:* 15847/umdns
udp 0 0 ff02::fb:5353 :::* 15847/umdns
udp 0 0 fe80::e695:6eff:fe40:909:5353 :::* 15847/umdns
unix 3 [ ] STREAM CONNECTED 16477 15847/umdns


On 11-04-2020 13:43, Perry Couprie wrote:

> Hi,
>
> I want to use umdns, but i found that it is not listening on any 
> network interface.
>
> When starting umdns i get invalid command.
>
> On openwrt 19.07 it work, but in openwrt trunk not.
>
> I looked at the umdns script and i found the following line.
>
> ubus call umdns set_config '{ "interfaces": [ "br-lan" ] }'
>
> Why does it work on openwrt 19.07 and not the latest openwrt trunk 
> version ?
>
> Perry
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
