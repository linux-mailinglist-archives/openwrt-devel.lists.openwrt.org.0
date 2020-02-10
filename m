Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D751715736A
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Feb 2020 12:25:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UP0eomgGGxOJkY86MTqGCx4qwVhZ1iqQtngsXp54qpQ=; b=CNJCzTbIc+7D0Q
	buxzGTbTqjXl7rNJK9C7ZpHbFcqM8QC79ljV97V3Z/kIthRCSi2S1T1Puse58BPWboQjFyRDsTiaa
	C+mRZXHba/8fGZfbGG+PN1kTmIp8TDTjQbMPhOOUfRGOCtKUaCBmlEYuHastytY47xFIQvVpCR5gy
	VNYXqAZv3cV92Ue99Ij58q7uu31ctPFq22D3EmbYplDGkMa/HViRwmOYq2omLIWdDPVTF7KPhzeXy
	SmjIjNpoMuq6e5dbwLzBmYfFcJxCHUy3yFQRda48Ctm7F8+qh3wiQe5GR0fDY0SILdmS8fluIcK3r
	zycq/OPK12Olw9rLMwKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j17Bw-0005td-QD; Mon, 10 Feb 2020 11:25:28 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j17Bo-0005sK-IK
 for openwrt-devel@lists.openwrt.org; Mon, 10 Feb 2020 11:25:24 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MBSJT-1jDRX736Xn-00D1ki
 for
 <openwrt-devel@lists.openwrt.org>; Mon, 10 Feb 2020 12:25:10 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Mon, 10 Feb 2020 12:25:13 +0100
Message-ID: <000601d5e004$c42c3460$4c849d20$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdXgBB/eVNJZA1mjS3KjzFjgULQIuQ==
Content-Language: de
X-Provags-ID: V03:K1:PB5MYDpKOE1toP5EJevxVGPoRYZkjKU3IKo081TgGywxCThhdVy
 uZCM55/hmkHahEL55oAPv7GzUZ15i+PfE+OwbtFgVLygRrGUANzUTbyCq4+fdFunTMMamFe
 k/uGwNFKhDAw8+UeSxSUKctaIhaYWfbo7OmBqKlvZaC8wBrjQfMQlqheW5VzxIC/Uoha8Bw
 tjVBu3Mi+9xbl9FDeAurg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2xz6ZZUvhg0=:e7oFq/zYzXpDbVNsiR2bKH
 VljQTqp73I7VtLIdsvpkbSMizBnQ49omG/QiosaE7EfIFZvF8BAc/DupTzhyUDz2EEkKcL7uH
 LtzQzAHNIsmXHosuK7NyMyr9uo0Yajb2iCp+WeNVJMzCPGnsDwKBW6W4Y4chDEoybFm8aoFWc
 HQ3gAIz7MB4+qFOVpJ7F/5O/CZk8s/idA8Kxizy1wGfyjD0blsxL9UDjZbkGwaN2kRZWs9k5K
 ajtcpLns6/Xq7VuCc0dSwpPLvcqax2xHERxheefxehZoxIYxxNJQ2dWq0Wr3jHA6mUgi8BuLo
 WY0mKdgkpMWKMj1aIxrC791ncOeXxqgBTuXtyfTN8V+bUlaTWQYsGoW8drdBt677Ak3LiH9pa
 oQl6BCzM11+Qa3qwcUeAC9LXJkLAQRgILRRZ5V2TiY0GJ2yWVAvcwiCfnK8l8BxA2MDkR86lv
 6+kGdmV7i+AQWuOZZ12X7gfIoIqbSRvUTmoPZMEYVLAbLgR7dO1lRUM86Jy+sMVJhJ7hoTXQo
 6m/FtoayZ+DnGfi1x36cRYGx/vBsEXEfn3kycs4W9VCEtLQpZPud6ZRA8vmBJzkrjLhIhFl5K
 pbhK7W2Lu+zKtJpodyj1WdysK3NfAnVVVl9FYXOeB1AUvPWY2xoSpC1wcascFPy8CJznybJV6
 bVb1WDHHpLQb2KcGhbmnb/4h/dfJT8bscqPkZEJl74XYBZFGrs8LEQ1v/ZemmTEjjqqKOaMhP
 CTYYae0PhTAic6eKzlx4T0ujkqP7oVaCRL/P6W6ZFdKdoDHv341OQM5yvWmbz1O9hJ1xRwDGC
 FqEHAlT4t2Td5AEl3p3yPflNOMm5qu8U1lC5XjASFhPFduYyWOqDDiug5EjtApojsQ6CuHP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_032521_543128_4C4ECB24 
X-CRM114-Status: UNSURE (   4.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] SPI 104 MHz on ar7240/Spansion S25FL032P
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

while reviewing the PR for the TL-WA830REv1 [1], I was wondered about the
unusually high
spi-max-frequency = <104000000>;

The author states it's running stable, the datasheet tells

Normal READ (Serial): 40-MHz clock rate
FAST_READ (Serial): 104-MHz clock rate (maximum)
DUAL I/O FAST_READ: 80-MHz clock rate or 20 MB/s effective data rate
QUAD I/O FAST_READ: 80 MHz clock rate or 40 MB/s effective data rate

and according to the author, there are other boards with the same chip and this
frequency, e.g.
https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/dts/ar9331_tpl
ink_tl-mr3020-v1.dts#L123

So, can somebody lend me some expertise whether the value is okay?

Best

Adrian Schmutzler

[1] https://github.com/openwrt/openwrt/pull/2752#discussion_r375829096



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
