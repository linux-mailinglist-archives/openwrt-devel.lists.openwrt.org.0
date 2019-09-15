Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DF0B3078
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Sep 2019 16:15:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NkwvAinTHNPKFwA3E9xhx0z0riUDk7ZOgfMmdUxtSp8=; b=XVsNjT3NHMzL14
	8Ez3SgKQM2X1845RMaXVJJVoLalyCPk0qLjUafnMFdy/7my6O2IqBapkqXzUbVy6eZ3yHpfAsNu5d
	kMZlTuKHnhuXJ46x94LW9aFGVpRWwl+W0NlJOu1mFe5ZGicT49s55KFVch+SEOLMPRVUsrdVis5jy
	zekUqhKhQoP8p3bZ4E8/Dz4xBM7xYydlktYVvFmCLdLsvtM0JlhmM708ZuHsPX1SLr825sOzVfi3Q
	mSpouhHwxpebFuQeKtu5aOOi3X8DL2C+jO6mT2aC+94mIhMqyqW63yJw64LdCrvQse/vSfI/2raOS
	HjmGbwsQRq2YqQCzbegw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9VIj-00049N-Ia; Sun, 15 Sep 2019 14:14:53 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9VIX-00048t-NO
 for openwrt-devel@lists.openwrt.org; Sun, 15 Sep 2019 14:14:43 +0000
Received: from p200300c587154500f087ce24c69ce2c9.dip0.t-ipconnect.de
 ([2003:c5:8715:4500:f087:ce24:c69c:e2c9]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1i9VIR-0003RM-Se; Sun, 15 Sep 2019 16:14:35 +0200
To: mail@adrianschmutzler.de, openwrt-devel@lists.openwrt.org
References: <dc2bbddc-93d4-7fa0-7853-87dde39b4b30@birger-koblitz.de>
 <004e01d56bb0$c76c5740$564505c0$@adrianschmutzler.de>
From: Birger Koblitz <mail@birger-koblitz.de>
Message-ID: <e6c5ebda-2520-62d9-a2bf-9a32e62c0dff@birger-koblitz.de>
Date: Sun, 15 Sep 2019 16:14:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <004e01d56bb0$c76c5740$564505c0$@adrianschmutzler.de>
Content-Language: en-US
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1568556881;
 aed4da37; 
X-HE-SMSGID: 1i9VIR-0003RM-Se
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_071442_100237_5F88A92D 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v6] ramips: add support for Asus RT-AC85P
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



On 15.09.19 12:31, mail@adrianschmutzler.de wrote:
> Hi,
> 
> see additions to the newer-ending-story below.
Well, at least in fiction it made for an excellent book. Not sure in engineering never-ending stories are so great.



>> +&pcie0 {
>> +	wifi0: wifi@0,0 {
>> +		compatible = "pci14c3,7615";
>> +		reg = <0x0000 0 0 0 0>;
>> +		mediatek,mtd-eeprom = <&factory 0x0000>;
>> +		ieee80211-freq-limit = <2400000 2500000>;
>> +		mtd-mac-address = <&factory 0x4>;
> 
> With mtd-eeprom reading from 0x0, the MAC address at 0x4 should be read by default. So, you should get the same result with the mtd-mac-address line removed.
Indeed, this works, I get the correct MAC address by default.

> 
>> +	};
>> +};
>> +
>> +&pcie1 {
>> +	wifi1: wifi@0,0 {
>> +		compatible = "pci14c3,7615";
>> +		reg = <0x0000 0 0 0 0>;
>> +		mediatek,mtd-eeprom = <&factory 0x8000>;
>> +		ieee80211-freq-limit = <5000000 6000000>;
>> +		mtd-mac-address = <&factory 0x8004>;
> 
> See above: address is mtd-eeprom +4, so try to remove it.
Here as well.


>> +
>> +&i2c {
>> +    status = "disabled";
> 
> Indent is wrong here.
Oops.

> 
> Best
> 
> Adrian
> 

will send a v7.

Best,
  Birger


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
