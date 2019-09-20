Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D737AB8E0D
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 11:51:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W1wR4ii71Q4yeFW3iwieER3EZue7vgs5yPsAuVpN1Mw=; b=hJW9dJtbQlHGk8KOpAA0nTh84
	oEgJanxxdPVLhckw3VpFbeAEV9nZiAFOo8VbveB1Ty97vEej61dUnG7KKMAaMJ0/J0FkF5uCyqMtI
	Q/cjH1RopbSwh3xyOyy39g1mq/HEHDgU+NQEwf1h7zS9OS0Hh/VyXiJPPzMc6OK0B5lVIIHIOxB4W
	ODh8GQzHrbzzaezRtd/B5O1K9jkPQtHCSeorTcUO9Rlxa+uVpc0Eb2lAMzn2G7hfwwKTeEGwOnT13
	sny4KW+ULC9qvK+8kCShc2rf7Xap3/1+w1cGtIdBBSfr/+XnGA4WOJWCsYJ+MzpmNFZu/XJTIXM3i
	cW66n5qQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBFZn-0001W3-H7; Fri, 20 Sep 2019 09:51:43 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBFZd-0001Vg-GI
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 09:51:35 +0000
X-Originating-IP: 98.151.65.6
Received: from [192.168.0.191] (cpe-98-151-65-6.hawaii.res.rr.com
 [98.151.65.6]) (Authenticated sender: mail@aparcar.org)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id AC1024000C;
 Fri, 20 Sep 2019 09:51:14 +0000 (UTC)
To: Jonas Gorski <jonas.gorski@gmail.com>
References: <20190823090237.9471-1-mail@aparcar.org>
 <CAOiHx=mT7i73+=B-_OXQD4SUHpd3goAsGJoaFncOKcFFqKgrbw@mail.gmail.com>
 <006601d56bb2$09c12020$1d436060$@adrianschmutzler.de>
 <a1f113cb-2c53-d49a-a4f6-0780678851ed@aparcar.org>
 <CAOiHx=mpf8VL6J9_T29kE7JGKNZ_N4Sd0qbxfCU08ga6O0pqHA@mail.gmail.com>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <b53bf9ce-83e7-1592-de76-f7c0236ec4ed@aparcar.org>
Date: Thu, 19 Sep 2019 23:51:11 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <CAOiHx=mpf8VL6J9_T29kE7JGKNZ_N4Sd0qbxfCU08ga6O0pqHA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_025133_690975_D8CE4F13 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH] treewide: add Generic subtarget if
 missing
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
Cc: Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Tomasz Maciej Nowak <tomek_n@o2.pl>, Roman Yeryomin <roman@advem.lv>,
 Tim Harvey <tharvey@gateworks.com>, Jason Wu <jason.wu.misc@gmail.com>,
 mail@adrianschmutzler.de, John Crispin <john@phrozen.org>,
 Alexander Couzens <lynxis@fe80.eu>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 17.09.19 00:25, Jonas Gorski wrote:
> On Sun, 15 Sep 2019 at 12:49, Paul Spooren <mail@aparcar.org> wrote:
>>> What you suggest is about what we have right now. This kind of creates a misleading situation where for some targets subtargets are present, while for others paths and image names are "fixed" in several places to include a "generic". The reason for Paul's patch was to get rid of the fixes at individual places (which was/is applied somewhat inconsistently) by just making all targets apply to the same logic (i.e. that there is at least one subtarget).
>>> So, the empty files are introduced to make the process of building and creating images afterwards simpler (to follow/understand).
>>>
>>> I was suffering from the same problem when I dealt with OpenWrt-derived firmware, where I suddenly encountered a target without subtargets and had to implement extra code to work around that.
>>>
>>> However, I also wondered whether one couldn't code around the necessity of the empty file, and just add the SUBTARGET/SUBTARGETS variables here...
>> Thanks for commenting, that's very much my point!
>>
>> Maybe the easiest solution is to add `SUBTARGET ?= generic` to
>> include/image.mk instead of introducing empty files. Will try that tomorrow.
> Thanks, this is what I meant, providing some sensible default value(s).
>
> I have to admit, even after reading your changelog and Adrian's email
> twice, I still don't quite grasp what issue this change is trying to
> fix. An example might be nice in the changelog.

The idea is to have always the same naming pattern for images:

<distro>-<release>-<target>-<subtarget>-<profile>

This allows you to be certain to find an image (or related files) at the 
excepted place, instead of guessing if the generic "subtarget" actually 
appears in the filename or not.

To illustrate: I'm trying to create an index with all created images. 
The index maps images and device titels to make it easier finding the 
right firmware. The more variation in the openwrt buildroot, the more I 
have to work around it.

I created an updated PR here[0] which also adds the new subtargets to uboot.

Regards
Paul

[0]: https://github.com/openwrt/openwrt/pull/2431


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
