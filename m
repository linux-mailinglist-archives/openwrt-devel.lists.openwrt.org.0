Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9592C1C5EF7
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 May 2020 19:36:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZVM1uuJ/itX7LPtHe3B2lPWzenn9WYv5mDsL1IR9Tg=; b=AdYpD2oucY0fAb
	yN7CYqPQVlPriqP5WBH5ptC0FMLhE+czSlrgjb6bIAaCy3RLE1/ZdUqk/MTyCTvl4HIDAEPHPHHmO
	3kiYMNNzEcobgi0J1b4XvzCeLV6pMYdeeGRnunUFB9tj7vx6IqM7qAkK5ZeoH5M8m3krgzQ6ePPS2
	zfNwtArpLkbQfEl5Ef8WvkTnqwM4XSfxVFVAS03ZOjVcjpzhM8iQ8Oj5Dhuf8zFVDDyDe0cYeejB5
	/IO0I1Ud/GxT8co1Ar3cd6ewIlLZyImUr6yp4O6A3SfaAW/slbPllkLH7VX5/umvJOZ0lmZZT8vsQ
	v6f2dp41baZp5YLxTrog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1Uo-0007vX-E1; Tue, 05 May 2020 17:36:42 +0000
Received: from host.cas.cat ([51.68.173.168])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW1Ui-0007ua-D5
 for openwrt-devel@lists.openwrt.org; Tue, 05 May 2020 17:36:38 +0000
Received: from host1.local (unknown [93.176.177.84])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by host.cas.cat (Postfix) with ESMTPSA id 27A4D3FA38;
 Tue,  5 May 2020 19:36:28 +0200 (CEST)
To: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>,
 mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <820c7e91-d055-9803-fd9b-9ba79779c4ff@cas.cat>
 <005a01d622c1$babf9ac0$303ed040$@adrianschmutzler.de>
 <cb04f299-5b8a-a2f5-ae25-352e6177316d@guifi.net>
 <599fbf31-7565-94c6-f7f9-c2f6c92d6f9e@cas.cat>
 <6d0f15e9-cb29-13b0-e8e6-6ffc01edf30f@guifi.net>
From: pedrowrt <pedrowrt@cas.cat>
Message-ID: <f72b98cb-6e6a-5592-c860-959fbf65cf35@cas.cat>
Date: Tue, 5 May 2020 19:36:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <6d0f15e9-cb29-13b0-e8e6-6ffc01edf30f@guifi.net>
Content-Language: en-US
X-Rspamd-Queue-Id: 27A4D3FA38
X-Spamd-Result: default: False [5.90 / 15.00]; ARC_NA(0.00)[];
 R_SPF_FAIL(1.00)[-all];
 DMARC_POLICY_SOFTFAIL(0.10)[cas.cat : No valid SPF, No valid DKIM,none];
 MID_RHS_MATCH_FROM(0.00)[]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 RCVD_TLS_ALL(0.00)[]; MIME_GOOD(-0.10)[text/plain];
 FREEMAIL_ENVRCPT(0.00)[gmail.com];
 HFILTER_HELO_IP_A(1.00)[host1.local]; RCPT_COUNT_FIVE(0.00)[5];
 ONCE_RECEIVED_STRICT(4.00)[static]; BAYES_HAM(-3.00)[100.00%];
 HFILTER_HELO_NORES_A_OR_MX(0.30)[host1.local];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 R_DKIM_NA(0.00)[];
 ASN(0.00)[asn:15704, ipnet:93.176.176.0/20, country:ES];
 HFILTER_HOSTNAME_UNKNOWN(2.50)[]; SUBJECT_HAS_QUESTION(0.00)[];
 ONCE_RECEIVED(0.10)[]
X-Rspamd-Server: cascat-vps
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_103636_593449_6B82964D 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Multicast issue in 19.07.x release and master,
 fix it in 19.07.3 (?)
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
Cc: ynezz@true.cz, Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

I tested it using Staging tree of Chuanhong Guo [1], and it worked. Good
job. What are the next steps related to this?

I understand to not be included in future release (no problem, we can
inject the patch on our own), but in fact, it is not just a bug, it is a
regression, because it worked in 18.06.x releases.

I don't know how many devices have this switch in their hardware and are
affected too. What I know is that I detected it too late, and in that
moment nobody knew it. That could mean that nobody is using this feature
(or hardware), or that the people that use it this way are giving up or
sticking to 18.06.x release (?).

If we are not including it for this release, as this looks pretty
confirmed and we have a fix, I would point it in the wiki.

Thank you all,
Pedro

[1] https://git.openwrt.org/?p=openwrt/staging/981213.git;a=summary

On 5/5/20 5:16 PM, Roger Pueyo Centelles | Guifi.net wrote:
> Hi,
>
> Thanks Chuanghong, I was unaware of it.
>
> I could verify the commit to work in master and 19.07, for both ath79
> and ar71xx.
>
> Best,
>
> Roger
>
> El 5/5/20 a les 13:16, pedrowrt ha escrit:
>> We discussed a bit in IRC, Chuanhong coded a new patch and suggested me
>> to try it
>>
>> https://git.openwrt.org/?p=openwrt/staging/981213.git;a=commit;h=b34165fd386158cbb4d8c09e2c5127b3dee3219a


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
