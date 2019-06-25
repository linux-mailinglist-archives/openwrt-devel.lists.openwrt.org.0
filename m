Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC68526BD
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Jun 2019 10:35:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNJr4oshz5YCIR7SGzxgDBnY7iO8DSGv4+mM9HwkoW4=; b=c9w1+VX5DWiIrm
	GWpDMxuyZBB6yufVvA0tfxjYOdODnIdh4g/Z/zInitsKV+VnApFv41SMReJ+kAhJuSkBD6Tr/Ysrc
	bF1DrbgJq7kuZtukG+v/TXie1t/jNrEUXAO+B7MSUlemF6VMRjdp2hqGpu3TAogNDH1Uw0q6VJ5SF
	yE+VXJxWdCDVEoDZ45/2FWlMP8JaBszc3XiGWibvuk6kmSM3QkKYyDeNZwKkS0Vz8/+B1x9uNDrWy
	qjn6TLxmfTAwiHms2pWuyhHtl3ZS4NSttLre4f935jWTCxlISJ9erOuFh5fAYl5AqXgy2NRtAQaq7
	yHqTi1pnfyQuVQYGKHow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgur-0006NG-R8; Tue, 25 Jun 2019 08:35:01 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgui-0006Mm-Oc
 for openwrt-devel@lists.openwrt.org; Tue, 25 Jun 2019 08:34:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To;
 bh=zzk4dtXeUaZiNUV0w4L6MGeM6TZAG3RyAjVI6e3Ul3Y=; 
 b=B41mulB/IxcsN/YeUSeCR0Yq6+sFUlhSz8P6Bs/8hiFFP2dNLNwjbB/aJhAr8Hg413JaWXOsOjczuqXcDEMutpV3ju5mv7vwf89RJQUA2U4+SnOpDtV0nqOPZQ6lmqvQquiWAHvQ33B/bgAPSRO6s6E+e5GvaDfJ79hcOoADSuo=;
To: Christian Lamparter <chunkeey@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20190624161320.7316-1-daniel@dd-wrt.com>
 <3007342.El8puCmMqZ@debian64>
From: Daniel Danzberger <daniel@dd-wrt.com>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel@dd-wrt.com; prefer-encrypt=mutual; keydata=
 mQENBFEb+wQBCAD7DgPNNCJeLdnVdMCcneGypnjJ8mtCmpjo/r7HO2Ig6im559z5IQwnGdmj
 FM+6Xws5oGBdhqh7V+uGJ0/pSVJ432OFd/2JYlEs9p9aLbth/QIaoMO4DfDS8EestMLuGYlj
 ffojt+lCwI/OVNvlsHPZczxUuLENDeCKPQKyVkSo8tf5qgOJxZmJ8ebSY2DiTD8Sr3TC7ge3
 aOMuE1YVMv8RbOEVvRcTBerCXteANRuJYA8H1Nwg1WOJjPl5SoysQqPamCkiyVFbteNtRZaV
 tBqfJNRUi4JXdZxsNoaWygJr5pAMyJ9FPMQ6meo/97Cj1E46fTH7QWDhYkwGS3sFLb1jABEB
 AAG0JURhbmllbCBEYW56YmVyZ2VyIDxkYW5pZWxAZGQtd3J0LmNvbT6JAT4EEwECACgFAlEc
 oikCGwMFCVexLAAGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEF2W1+mV7KsoZYwH/1HG
 YtcQuMVXOD1ClaDDoWumBZ089ABCeExcCjuNAqtySAD0Z1i3Dr153CDL5IF8WsLDL+hkhmRJ
 knQg31kwkFglm62HcYuVZiAEjoTgNZRfBezTQevWV6Dys8YdfJGdLifqtMQM5dBLuWtyRWK/
 gkcv0rf2iI9PLveCqb93K9qDLxzgV96kwTUabc6n4FIF324RUPlzCuGoDEUNkh/sVo8jkXl7
 v8vfxwKb1EEMlWLk7bRGqUg7mdHf9zM4Fnb9oMQLJUrFWtME2FlZLwKvMfW8/bPqHI3thIYV
 qgYvagC/1HKmlvHfo8rraKXsQKzNadlv4Vyh6iZYkdQXUTuQtDO5AQ0EURv7BAEIAL1UNRYJ
 q1hv3ggyZv9PSkaWy0t+xMoSwAd2hWdA3iuILrQXjtzJ3nTtePE9TrmLpjwmN8H/ppcNpf1W
 WZ1Zxer9e4cUmm1LjbbgNIArZqzplVh+7QwDJk0ER282k3p5s7IYLkjymwmgeuiSJgaRAmFm
 AJKjiaNZoGdZvaC8TGpgGCRidwDR/cUR1hjpA2vyidNSP5ynILqohEpIe2lvhClODSvEgcMN
 o4xOtmI+Yq2Qg2e7FUaP8pptEysDdDoUnSPxq9v0aQHe3FS90KzXGAaoCuEnnRaotzZcVI31
 vffWHoZ30yGETeTF+W52hIKe7D+MbFfyiRjNtOw6HKli7TEAEQEAAYkBJQQYAQIADwUCURv7
 BAIbDAUJV7EsAAAKCRBdltfpleyrKDikB/0SWPBPhPBpogDLF4bIwORt6Uu8UQus5jYudtMx
 j67v+R+f42sfBj+iKtz2GHlboul8tJXzcO6zVJf2gqQisCNAoS7wZ/k3axPtbgClQmsLtU7B
 KgVRYaWVlLol0hg/Sn1lju/yHhgmbdttfBmCE63wDWr1ITTFepp9aVwaoIhIRBmCBpf3Vk5I
 e6l+1iqDXNXVQVf5qPdVE0Im7IZb9kA7Wk7N6Fa+zYpK+Qz1wFOXYjmK9SPhjdf/5/V2EQGi
 JgaVyfwaMRPUDRFW2wBlScmP+82LqA6TvKKyi3O3zgnFqTGvY2+bvkr9dTfRBlx1NlX0am9t
 YMmhspz7064avRsg
Message-ID: <41cdb404-d377-92f3-22d7-5edb07d2d34e@dd-wrt.com>
Date: Tue, 25 Jun 2019 10:34:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <3007342.El8puCmMqZ@debian64>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2a02:908:2614:35c:563:31a4:bd89:e4a6
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=4.0 tests=BAYES_00,NO_RELAYS,
 RATWARE_GECKO_BUILD autolearn=no version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1hfgum-0007da-Rm
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-SpamScore: s
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a02:908:2614:35c:563:31a4:bd89:e4a6]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <daniel@dd-wrt.com>)
 id 1hfgum-0007da-Rm; Tue, 25 Jun 2019 10:34:57 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_013453_087601_057B3A72 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: Add new device AsiaRF
 AP7621-001
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
Cc: gch981213@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 6/24/19 10:17 PM, Christian Lamparter wrote:
>> diff --git a/target/linux/ramips/dts/AP7621-001.dts b/target/linux/ramips/dts/AP7621-001.dts
>> new file mode 100644
>> index 0000000000..daab06ec90
>> --- /dev/null
>> +++ b/target/linux/ramips/dts/AP7621-001.dts
>> @@ -0,0 +1,127 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>> +
>> +/dts-v1/;
>> +#include "mt7621.dtsi"
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/input/input.h>
>> +
>> +/ {
>> +	compatible = "asiarf,ap7621-001", "mediatek,mt7621-soc";
>> +	model = "AP7621-001";
> 
> Oh boy, this is tricky.
> 
> <https://github.com/devicetree-org/devicetree-specification/blob/4b1dac80eaca45b4babf5299452a951008a5d864/source/devicenodes.rst>
> 'The recommended format ' (for the root node!) ' is "manufacturer,model-number".'
> 
> BUT. Thing is, this string here gets printed on the LuCI system
> page and from past experience "Manugacturer Model" works best.
>
I am not sure if using a blank instead of ',' is a good idea, because of
sysupgrade and the device tree board detection.
All other DTS files use ',' in DTS and '_' in their Makefile.

Are you sure about this one ?

-- 
Regards

Daniel Danzberger
embeDD GmbH, Alter Postplatz 2, CH-6370 Stans

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
