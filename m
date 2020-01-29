Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AED14CBF1
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 14:57:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HwHWqZneFAFvHwODkt2AB6AVqIstbAmj1qwYG8xt0DQ=; b=Rcg5ufxTkys/rC
	3yv2semere4LyDJSjYj4b0BWEDDsfjl84ha//ZgorigMGY4tgwqzStEWrvFExPyodZF+hQ8qVMu0u
	pkhswKFAqL1dmcNV1bRTeQ3zRa7YCVpQ4J1JMlrkiM4NawLlG17yDCInyP3tExYndGO6R5z3Ctz+0
	xOUPqxVJM9MjilOse6YJ6vg5UDfL9MnoZDsu9ZKUqvzmCKpTmyQll5wbDN8DAPLhVuBPm4sV8/d14
	/jdnKjnGF9mgTHBRaSyLWHYKwty5dNL0lUTwyVZeqF8m8peRjMS6K8IeDNZxxPvsL96W/j/Q9M+jC
	QVobxH1Fk451CXUlCHsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwnqH-0002Yo-B7; Wed, 29 Jan 2020 13:57:17 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwnq7-0002YX-RD
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 13:57:09 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MqsL3-1jIRKS1kOn-00msip; Wed, 29
 Jan 2020 14:57:05 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>, <drvlabo@gmail.com>,
 <achterin@googlemail.com>,
 "'openwrt-devel'" <openwrt-devel@lists.openwrt.org>
References: <ff0f9266-0fa9-1bf5-66f3-dfd76699a136@david-bauer.net>
In-Reply-To: <ff0f9266-0fa9-1bf5-66f3-dfd76699a136@david-bauer.net>
Date: Wed, 29 Jan 2020 14:57:05 +0100
Message-ID: <003401d5d6ab$fd4532e0$f7cf98a0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQHbV5t6lthWsXKkPx/KoLQaWzGr6qf2qGvQ
X-Provags-ID: V03:K1:FVLX0/nmNXx1iX1oC/g69pNFyW9+DrYtpW50FLcXxctKtb/rtCh
 0+eVns1w5mkggT7D0iHqaIX0Nd1NPIFS7jvUDhz03p4FLsvDUoVL+eCU2QRrJAC7dZvJC87
 C5//5Iay0iDGLConUAyXewHGJD1AJAKaB5ZuPWdhqc+rMg0iqb7y6I7aRmCA61F4N15QGXi
 ZQoHN/DEtJsavyxOraDsA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZBMH4GgA4+k=:akBuJ2ZNLCHCTFPh/bV71e
 rEAcWcSv06rzxm4Ck4rSUteh9ndAIA4SJ1HDSvTYZcnag4ZmNtArk1bw1FeBf8Y/e/mMFeZUx
 fC1wOTmhbVmubtJ2G14v3n8vR9PvabxPUs+Zcdz3KhECuQNq9yYBloXzyAGmsYAjt49EZtBbM
 KgUNSgTp5DCC8kJHnwwyyMaMY4pq/bGpfWhzFuHMy+vOYX7n6pqlOaRqenFz2rvjdFH957WKV
 VxMDIztoWWv79Irl9d7XbQH2xlRPuAyrAcmwHKMAGHEWmGx6lNSzWjCluBVAW5bsiRxKRWz8W
 EV9+nNR9WFgzLaggCv6DISiioS/k/IGZuBRaBHZmRmqFo6XDk1eZNtyHAO6p5PdkpMY0SYcMl
 cS3TlsGGxPJ57YY3hFAmZvNor5AwSIyoiX+LCkihb9tPaTfPGhLFrcLihG6hJljHw4QUqquJJ
 9AoOVydavj40I8kVErsINuXuWYkrVGwyzRvKbgjbMOPot2/Z2P//BT4XonLBynpWMQRL4T3yn
 6KZiRXEpbDhBJO5Xl7zP5jGYSYt+CIktnOoc0mA8nbmzMXYsiDUH6VdgGvXdiTxf9NexAt/Ze
 2Ff2/RpM++W5vJwBS1/CZTGnL9iUd4qS6ni9G/hd8tmhHXZDL2l9vFWC7qOB/GQ3Kah3PMetW
 IJS4qEVhDYEk0hkEuHiNj3VmDBFIEaRa1L53o/0TKBSlS+bW0OvB0ySlCrWsZhUZ+XR+WfvRP
 w05nI57R+Q7402skJ6Y2PriwBFPEJ+Ri9FK2hrJ+cnEhvh67mjPQdsVdigdkCWtWVqyt1mCl6
 iqx/DUfg/VP6lUHePC5Sexao6DLytyfW0/iu+6xIL6+GqsOPAEx4Phr0KtD+axboGMy3zKO
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_055708_166742_602D08D5 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Netgear R6260 EEPROM location
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of David Bauer
> Sent: Dienstag, 28. Januar 2020 21:05
> To: drvlabo@gmail.com; achterin@googlemail.com; openwrt-devel <openwrt-
> devel@lists.openwrt.org>
> Subject: [OpenWrt-Devel] Netgear R6260 EEPROM location
> 
> Hi,
> 
> while testing my shiny  new NETGEAR R6260 with OpenWrt, i was experiencing
> very bad
> reception as well as throughput. Upon closer inspection, it turns out that the
> EEPROM
> is read from an incorrect offset. The Offset positions here are:
> 
>  - 0x28000 for 5GHz
>  - 0x20000 for 2.4GHz

Have you checked partitioning? This might just be a wrong position for the
factory partition as well.

Best

Adrian

> 
> Can someone confirm these offsets on their boards? Maybe this is wrong not
> only on
> the R6260, but also on the R6350 and R6850.
> 
> Best wishes
> David
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
