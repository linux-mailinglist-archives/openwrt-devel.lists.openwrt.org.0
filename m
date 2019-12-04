Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 848A511369D
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Dec 2019 21:41:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtbYd4pHDy92nQbGUAcomfLIteYPFlV0xONiDFVHhEc=; b=AcrUFNi0cl21Po
	stqsuM22qaw9e4bz1UZm2p4UoRaSBr902GRQD17lzReLO1SQP+9Oo/W5F9J4I1bW++eDsQu4tPl6a
	oK3hFl8dUoM7Oce4X29tQH6MZfQjNhxMUpcrcjjYZESIXrnvEWH++XwnUOL9e/I8SMNQL/s7cmoKM
	QEpppsVQ5fZA8HjRzhT79mM39WZU6SiCXTUxxe550XMyZi0pKpuaAaUZLs7hSYWzqTCAQsRXrJq2r
	lfawwwCRzZojnZafoAmHPe5ji32FSdd9j1AqiogHNe16YorwaQhpBLI91t8O/qgm6WEj2vSnPBF14
	KCqW3hlLoNDhCc6vZ2gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icbT5-0001n9-BD; Wed, 04 Dec 2019 20:41:51 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icbSx-0001mf-Or
 for openwrt-devel@lists.openwrt.org; Wed, 04 Dec 2019 20:41:45 +0000
Received: from acer ([188.193.231.72]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MeUPU-1i4e9g3bXA-00aSqC; Wed, 04
 Dec 2019 21:41:33 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Florian Eckert'" <fe@dev.tdt.de>, <Eckert.Florian@googlemail.com>,
 <Jason@zx2c4.com>, <ldir@darbyshire-bryant.me.uk>,
 <daniel.engberg.lists@pyret.net>
References: <20191204103047.17139-1-fe@dev.tdt.de>
In-Reply-To: <20191204103047.17139-1-fe@dev.tdt.de>
Date: Wed, 4 Dec 2019 21:41:28 +0100
Message-ID: <004601d5aae3$36c1b420$a4451c60$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQIs7tWtNVcW98NBxoTbQh5Dmrj07ab76DiA
X-Provags-ID: V03:K1:zalKK+esyFDtXbL7mYbX4XRUhi0oF68+o0+EbxH7YuN4ixmO/ID
 QrtGuSit4D7QGgGwvyv1GAjQjSZ0CwaKrcFlNd7zbTC1e4mNxGEWD3XYaZc1jl4YZgQSIgG
 FAQ0Xiw+X/SQxwnAPOxDSPQqo0vm3m0HmWfSducOfDt39JA0o1qyXEpw5Pu69RDCm+Ud80R
 zWdQaK2NDphi9aul0nu6w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rdPuVSeXn9s=:AKJobc7We56WKJRFQI3qoe
 ZIWzNQAquwwAhWGkbGNpf5YMhsS2o1ce9oRqjwXaBakjoy0O/dMyNDM5LR11s9TbZ33uZNZ6n
 drne++HC9vDmjj+Nfhl0JTWmGAETmutZc25RmBelusyOkGh2Xm1x5/qfdqGLRptS+6IAHaA7/
 Noxg/5oowkmkZuirKijWThULNWsgi79g7JOv/tSpO+Hl4LDXPexjI0fcloiVrDQ3LU4N43mXy
 5iw71Ngx/xhLfI5Th4c/gOOx11XCKzdDUsV41W277dfdk3uf4IqAoUdGvSoFUt6MtFErVKg1A
 MMb1VyYBnUygDFyy9Jg4wmfJ23KN0MqNlAMscAdzSfsMVYVo1hn46dmRTdlyKiF3aMrcFQmhd
 QEvMchPt/n6w7/3oxBYr8PWdEP7CZ9e5V1J8kJh9FTYodCci7LCexivy0bDXTRUlGbxLI8nlC
 DeUhe4GAMIrwsnPjpxQjCPYN696qAJF22QScpQMzIRfa0KlUt0AMCSiFIwbr0tKiq8uwrahgE
 Oom69sM8PEUstSPS4W8hYgGgEYrt904lOtWMkeOBYOvJ0yB/yNoTFjhAqGdgO/h3HHfsQS237
 VcyFrzOibNn745Oxmod1S32SpZiYzDe8V9QcoEwVXl91n1h7dAwnqXY2L+RLgW//ck6tQb+4+
 wLKYJrIOc3WGC4XjH+liKRIUUZTd/YbCm2pCfO7lF8guqVBJanwckBug9T9Ghc1IvjmBecIvm
 FgJlHrQ1BJJzVzM48TW6yOUbMkpenRVUQi+sGUumXjHA3E3NTBy0hu33MWd7+52gxiD1eXTQh
 eDnvqhL48/i5tlDH49Gyq9GXottFTpLFQ5uSLTJ+R9cBjGuDqXEUuro6HoHKIuXG/1HLbb+XT
 eHshOvFCPs/GGCY57U7M4ndB+Mi+Me3plyRVLN90A=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_124144_099781_69FBF767 
X-CRM114-Status: UNSURE (   4.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] wireguard: skip peer config if public
 key of the peer is not defined
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> +	if [ -z "$public_key" ]; then
> +		echo "Skipping peer config $peer_config public key not
> defined"

That's not a sentence. Either add a colon after $peer_config or make it a
real sentence:

"Skipping peer config $peer_config because public key is not defined."

Best

Adrian 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
