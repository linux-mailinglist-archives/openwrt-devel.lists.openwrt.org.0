Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 576ABF5CCE
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 02:44:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ki28MtaoahaywDw8NcRNzyRvBgIBXEiWWvNK4C2hhHY=; b=jnUch480S1G9kJ
	QwolgNG57QbSqieZBE260KA2oXiN9i8vzN/GDdAXxRhowjcXItSak6iv1tszGNJyY9eMyhomL4ZsQ
	Yb/1JtiWeV4TxmAr6PECnyq86bjch9SwUc782edsfd2kw+TCwWe/PidM2C4milweAW0kI/MWw3x1t
	LK2lUbbmvBVxo+nWScBSIS+IZW+Hugdcj1CPbIP5VkNy0uQWPOg+brr0Os8LdB4+U0BVorZDjvc53
	JREj6qki19oBRGAS7TbIxig9etGGyfs82Dixl98aeAVfcGebeqAbZRysihypzJ0KUxnTlkQh3cU3m
	4pf95klMPqZvsVh6x3wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTFmr-0003YH-JE; Sat, 09 Nov 2019 01:43:37 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTFmi-0003XH-5g
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 01:43:29 +0000
Received: by mail-qt1-x82e.google.com with SMTP id l24so8805865qtp.10
 for <openwrt-devel@lists.openwrt.org>; Fri, 08 Nov 2019 17:43:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=pEBKdOEdqmD3vYrvkMHEmyC1+L+w3oziR5Lqx/0xg60=;
 b=XY8uQaDJXK1tpmu6kURhnN1H/m3Z8b9tHSWy1JqTdTGgQjso/8Yu1fJCyzG9taS9Uh
 l6mAuUaVioOixs7lhsHmVxr5DEoP6KRiqJucZs8vVUDaagTE2tqllhERLMWb9yCoG/LG
 FpO8/BJCwDrT23zNkrFfGbpGT0g1tCZCJbWofPnAnj2/TYrLYucW/DgBVqRoR9q3TJ/F
 YC7Ryr9nvhwbMWUCoSvZopShkzk4AtDaL3kNeMe9tN1BeXHeaDz0wgaHtFQCA/PbiWXw
 OSjkRbZ9WWV1B4ZQyIv1wj2KJfDkPfuTjkYoq6olFGoHkhuy0S7cZeWeKBVhQz7/Aq4D
 CC/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=pEBKdOEdqmD3vYrvkMHEmyC1+L+w3oziR5Lqx/0xg60=;
 b=RdMNbZJgYlD0gggmUqNIaTB94JLdIZ5ySq04VIObwvNc1sxUM6c7F252tywHiOFfb5
 H4t2XwDnQLE9PRgvAzQa+6ItKlX1U84EqpBELDLtRA/CeO1yv1BLqLsYcR0hQsa6Wgrx
 e+Y7brxDzTvHgUk9X6DEpeOpgPeBO4UwF2TxfZcmBW4Feo3Mba2rLRIFJ6Mkmi744crb
 E1kqxYEuXMWrnndAqRkNPmHXHjjkA7ybmXhZP//eT6Y9LeclD0L8k7VqdKpqWQBJbkBj
 BIHDt/AHJunZllEsMBKE8+E9Me/u+NkuP9ucwYz0k34bdndILFBhic6TiG2IV0tUZEih
 B++Q==
X-Gm-Message-State: APjAAAXzBD8p49cqqec0Z+ZsyaZlRzR9g8Qzcok7UCYQ9EboHmwlOpKi
 wmKMTVcZ9SQ8tBuj1QjrybE=
X-Google-Smtp-Source: APXvYqwjySP7/IdkVoq+QNFfp0ueTG0cy1Z2Gbp04Z/Xi3570Ahqcc4/HjVcK5UJ42Z6ZvGASQcvFQ==
X-Received: by 2002:ac8:19db:: with SMTP id s27mr14826306qtk.347.1573263806376; 
 Fri, 08 Nov 2019 17:43:26 -0800 (PST)
Received: from [192.168.8.121] ([184.75.221.35])
 by smtp.gmail.com with ESMTPSA id g25sm4007355qtc.90.2019.11.08.17.43.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 08 Nov 2019 17:43:25 -0800 (PST)
To: openwrt-devel <openwrt-devel@lists.openwrt.org>, dedeckeh@gmail.com
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <0fe1f8f2-4236-cc6b-7246-20ffb6afcfa8@gmail.com>
Date: Sat, 9 Nov 2019 09:43:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_174328_237715_23003AC0 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] script hook for odhcpd
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

I'm adding hotplug.d support to all DHCP events.
For now only dnsmasq triggers them, with
openwrt/package/network/services/dnsmasq/files/dhcp-script.sh

DHCP clients like udcpc and udcp6c are easy to add as the client calls
a script hook with documented arguments and environment
variables I can pass to scripts in hotplug.d/dhcp.

I'm not finding anything useful for odhcpd.

It does have a similar script, 
openwrt/package/network/services/odhcpd/files/odhcpd-update
that is called "lease trigger", and currently just calls dnsmasq to 
reload hosts file.

It does not seem to be called with any argument or environmental variable I
can use for hotplug scripts.

I can also use its ubus API to get a list of ipv4 leases or ipv6 leases.

Did I miss something? Any ideas to implement DHCP hotplug in ipv6 server?


-Alberto


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
