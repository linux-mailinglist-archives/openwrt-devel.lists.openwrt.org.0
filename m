Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 505D2174106
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 21:33:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MeUWnul3H7Dglpub63A8oljLhK+1eYC3QKnUKhdjNvQ=; b=F3Pe7dy1OqOActOdF1ZJCqdkU
	hxDsww5g3g5HnY+eoYx+NfNylnzF7gnZ8VAZmtmkCNaTWi9nuEVOpu1GOLR8ZHlpPVkVLg8/zpzTw
	ufhDDjkvespifF6sUJD/Rq6PxUKwqvlMVU7SuoAThiE7GKjCCNrXT86RVx9mkJTTSCiTYgEbI9y5b
	ev0oprcMduaMREJEIYJmOfBehru4vdTK1j0O8r5jdvaNezIy2O27YsdrNTIzIvkdPAFdnkqwYOZsb
	jCke94xrPnYwlNOyRgYnggTbF2LqaLQsxnjZ/Ng/+Q/oauAQdd3Y47/cevaFMZZ6pH693gKclMMTX
	w+ye+I6iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7mKH-00084v-BM; Fri, 28 Feb 2020 20:33:37 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7mK6-00084A-OP
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 20:33:29 +0000
Received: from [2a04:4540:1405:a00:2d8:61ff:feed:60f5]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1j7mK2-0006pl-Ev; Fri, 28 Feb 2020 21:33:22 +0100
To: Stefan Lippers-Hollmann <s.l-h@gmx.de>,
 Adrian Schmutzler <mail@adrianschmutzler.de>
References: <0cbeba3c-d296-a3bd-3a66-1d8d64606c75@ncentric.com>
 <008801d5ee68$1c393ba0$54abb2e0$@adrianschmutzler.de>
 <20200228213033.7df0aacf@mir>
From: John Crispin <john@phrozen.org>
Message-ID: <4ec68236-6677-f396-c7cb-291c5fac4247@phrozen.org>
Date: Fri, 28 Feb 2020 21:33:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200228213033.7df0aacf@mir>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_123326_951245_7EB36A3E 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] RFT: Add support for kernel 5.4
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Chuanhong Guo <gch981213@gmail.com>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 28.02.20 21:30, Stefan Lippers-Hollmann wrote:
> Hi
> 
> On 2020-02-28, mail@adrianschmutzler.de wrote:
>> Hi,
>>
>>> On 2020-02-28, Koen Vandeputte wrote:
> [...]
>>> All supported targets have been provided with kernel 5.4 as the "Testing
>>> kernel".
>>> This means you can enable 5.4 by selecting "Global --> use the testing kernel
>>> version" within menuconfig.
>>
>> Thanks for your work.
>>
>> By moving ag71xx to files-4.19 on ath79, I suspect 4.14 is broken now on
>> this target.
>> So, we should either copy that to files-4.14 as well or remove the
>> remaining 4.14 files there as well (where I'd prefer the latter).
> 
> ath79 with kernel 4.14 has already been (mostly) broken by "ath79: add
> new ar934x spi driver" (ebf0d8dadeca443121f4f597c51bf6591e341caf), which
> does break the (shared between all kernel versions) DTS definitions for
> NAND based ath79 devices (breaking compilation with kernel 4.14).
> 
> Because of "FS#2524 - ath79-tiny: TP-Link TL-WR941ND v2.4: Marvel
> MV88E6060 regression between kernel v4.14 and v4.19"
> https://bugs.openwrt.org/index.php?do=details&task_id=2524 I still do
> regularly build ath79 with kernel 4.14, but in order to finish the build
> I do need to comment out the affected devices:
> 
> $ grep \# ath79-k414.diff
> +#TARGET_DEVICES += tplink_cpe210-v1
> +#TARGET_DEVICES += tplink_cpe220-v2
> +#TARGET_DEVICES += tplink_cpe510-v1
> +#TARGET_DEVICES += tplink_cpe510-v2
> +#TARGET_DEVICES += tplink_cpe510-v3
> +#TARGET_DEVICES += tplink_cpe610-v1
> +#TARGET_DEVICES += tplink_tl-wdr3500-v1
> +#TARGET_DEVICES += tplink_tl-wdr3600-v1
> +#TARGET_DEVICES += tplink_tl-wdr4300-v1
> +#TARGET_DEVICES += tplink_tl-wdr4300-v1-il
> +#TARGET_DEVICES += tplink_tl-wr842n-v2
> +#TARGET_DEVICES += tplink_wbs210-v2
> +#TARGET_DEVICES += tplink_wbs510-v1
> +#TARGET_DEVICES += tplink_wbs510-v2
> +#TARGET_DEVICES += ubnt_bullet-m-xw
> +#TARGET_DEVICES += ubnt_lap-120
> +#TARGET_DEVICES += ubnt_litebeam-ac-gen2
> +#TARGET_DEVICES += ubnt_nanobeam-ac
> +#TARGET_DEVICES += ubnt_nanostation-ac
> +#TARGET_DEVICES += ubnt_nanostation-ac-loco
> +#TARGET_DEVICES += ubnt_nanostation-loco-m-xw
> +#TARGET_DEVICES += ubnt_nanostation-m-xw
> +#TARGET_DEVICES += comfast_cf-e120a-v3
> +#TARGET_DEVICES += dlink_dir-825-c1
> +#TARGET_DEVICES += dlink_dir-835-a1
> +#TARGET_DEVICES += iodata_etg3-r
> +#TARGET_DEVICES += iodata_wn-ag300dgr
> +#TARGET_DEVICES += ocedo_raccoon
> +#TARGET_DEVICES += pcs_cap324
> +#TARGET_DEVICES += pcs_cr3000
> +#TARGET_DEVICES += pcs_cr5000
> +#TARGET_DEVICES += pisen_wmb001n
> +#TARGET_DEVICES += qihoo_c301
> +#TARGET_DEVICES += sitecom_wlr-7100
> +#TARGET_DEVICES += teltonika_rut955
> +#TARGET_DEVICES += wd_mynet-n750
> +#TARGET_DEVICES += wd_mynet-wifi-rangeextender
> +#TARGET_DEVICES += winchannel_wb2000
> +#TARGET_DEVICES += zbtlink_zbt-wd323
> 
> Admittedly, the affected TL-WR941ND v2 (4/32) is barely worth the effort
> anymore.
> 
> Regards
> 	Stefan Lippers-Hollmann
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 

sorry for being dense here. what are you trying to tell us ? is there a 
bug for which you propose a patch or is this a report or just a rant ? 
honestly cant figure it out
    John

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
