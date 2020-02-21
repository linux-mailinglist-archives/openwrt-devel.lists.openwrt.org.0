Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC5A167A27
	for <lists+openwrt-devel@lfdr.de>; Fri, 21 Feb 2020 11:09:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k43c6pP+TVMwauPhOt2K/TBi5nvqq5e7bEQ++zzN7+I=; b=MurTnN2iEQRhGv
	3/H+euxkCBsP1/lmjtT9gznmo7ZwkyBmFFykyeyln80/HJHSHty6/MfsB2y/k0vVl8nLQXNX8ULA1
	y0/osimn8nY1zWXOP6mhUGh46gHo+vC5iGxkpLWAatr47Ix8HnuW3qu0J2r8L4z5DxKIKZpl8Fyzf
	ZzfhlYw3Y1ivTDtTtKRTMzeznRzZAaNb9M6fuvdfQGBl3Lj0YN5vhTu1nslKrGmfzrB8z1epwWE36
	CjrPyI01Of6Yvb3YzcIvbqvZVXDRmcHmARK8L631kEEBWFH1sH3wNlaK2A+VCOLz9U4FOCn+chOfP
	JqdmX3JVrzrpqupfOQmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j55El-0000f7-Io; Fri, 21 Feb 2020 10:08:47 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j55EY-0000cS-A3
 for openwrt-devel@lists.openwrt.org; Fri, 21 Feb 2020 10:08:35 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 2EBD154655; Fri, 21 Feb 2020 11:08:30 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id E7A7254652
 for <openwrt-devel@lists.openwrt.org>; Fri, 21 Feb 2020 11:08:29 +0100 (CET)
Received: (qmail 41955 invoked from network); 21 Feb 2020 11:08:29 +0100
Received: from unknown (HELO ?10.42.0.220?) (jo%wwsnet.net@24.134.185.161)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 21 Feb 2020 11:08:29 +0100
To: OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; prefer-encrypt=mutual; keydata=
 mQINBFU/gqoBEADOH7rJT9/cMjuHsUqHn38uxtIEPMsaI0zg1t4nU+sraS5aatIjWVouDdUB
 TBvYK6bVgef74Rh4zlnhNxOAQyWmTW1BApe4/et3F69wUpUW38mWYiwXJ1IoXFiK+74G3dix
 yvTl7zabyUzNqjP3MyEXFO0w0mQQqXWqncjD192mTZeN+AldCjIyNpKl3iTQ6mZUGydjPs53
 OBizq+gHOAa0tmxeYbMP5nI9dvgBFunycs2X8MNvAGCOLg24SqTTO0yxmwHlJEKDcxH+H1hN
 v3HkZGfBYtbdEBCiA7Y5trDYD9yjHaVf/u+U9BKnKX8RWQicoSiWT8ZoO9WSmAfwSaTl43W9
 X73QMnsDUQZTwox4c6ApnnhCU8KSAJeg1ghVKp7rH5W9I3YWMDXCVETS2NZYBuzRaGGzoc6X
 g8kAHAEBIJV3eodw+EAi8JOEBfAck8/DHKbX/3Z+1vmT8oU+P16sm9wXRbDF8sAsdu49Tdnf
 aRlVtSDU2sRT6jWms54+Mz0mLdU5UNQZZmC+/H8L8Km+aIpmEsMk0BPSSTs0RlD3+rtbsX+Z
 cbnD4QUU2fHjqmxbuyBxBjDrrbQFiai7iXkJnPxmrX8M7NAQtKsgCaBhL1Vr+Wf+kQ8iOO7o
 HqwmLINZ/ibA/fqq0WK1zbJIXFFFF1spYPobs+pyIhE/F2/UKwARAQABtCpKby1QaGlsaXBw
 IFdpY2ggKERldmVsb3BtZW50KSA8am9AbWVpbi5pbz6JAlcEEwEIAEECGyMFCwkIBwIGFQgJ
 CgsCBBYCAwECHgECF4ACGQEWIQRlmIU8XC7ES/NiIks6ofWzR9lAhgUCXTfqXgUJC7rOtAAK
 CRA6ofWzR9lAhh2CD/9FMgm1kYqjG685ZVv7naXIgfoJQG85zGJgE6CNj6furJSvx0MqQRIN
 +dZ5pOmV8C2eYwdJUvxyIYINjxc0epioK7X8aMXZp57t8y6CfC2SDITvrE7FG+aRlHDp0/WB
 dBZrqfV90v6TM9OLyXvhzk0VYUN8Fhncdnfi+haHfzRMkndjlG4C1QV3Ayro1alpZTkVS8Cz
 Lt0Iv1Q8NP1yue4Qk6gPV6hetlVotrpQcOwvHqffQfC5mjf55AFo+APIWF4UknDi73T56fTJ
 fedu0MK44+iJl7CpK9ESaX96y1BEtDF8eOXjg4v8SXhTlF7RGxCjSxqjqvufjVprLWAy/lI2
 RvTFskr/k4i7V+pxrjnNcw1gj8GbH6SbgLt1hv1XFFw3dIbFQoJESGGQnvJ+sHIjiqY4TjBR
 SER+8pM9OAQ8CMVqoGjFxuAGyyoj4npLGY9tAu5RudgQnev3msn+LiZqycwyr3b9q8jUme51
 8bnumCZeNQVLY7RCocM43BnHA04I3jsFqXgHd/ZzsRyrN5nP3reNGMYVghkGLmD5ET4aLc35
 S2Zy54FF8KMIg6n+/H+mraBJ9AuVHQ/0Tb59rlQCgW5Y81uopF/pZWDMzhJAs26LrVyqb5bb
 LQFRDs7RFm4QAAR3z8zgzPzhvIVT/ML/DOmN9nZmA5reAmNveov3m7kCDQRVP4KqARAAu0n+
 LOANYoZBw6h/aHjDRYiufOFr3mrRr0R1z/29r9G3CgYAR+wREG3d+Eof6Gihbci03SabInFM
 fp7B0AZ9Y2byEoauLG1GprTD9qIh1KJbnxFCrHTKTERtblh14OI0KUzqXOsxIKq0yI4xUg57
 49eRwEeCtBIoy4z37TXCu+v3TVVJva7Gy8ij1LB/xBVPCmoTzVHnOl8DKsdPQ4POX/TqL02t
 A2PBpQPklpAfkxrmpeQbVrm8EMGQdPOfaFCUfcFnj/8/qauZhFgIrMJrxoXzQeW+9AP3K+Be
 U7yNNvzDNPpLQQ3wp5XmVLmJ0xurqoVbheZiQBtF4MbQxIT+9YiLv514oGK9UG+syBj/nE49
 AymL6OcBR3/ZfBk5VABKynUtP5LDP0vPErvcKsE9b2Q/AqoGiPV3fJ9fhrFivoS56fxLd+sl
 4le/uuENMDnEg8fjoGoGJ0UQMeEGg87bcI1V5D6YXtJy1v5g0Ro8mJ+/yh4RSifn587Juetv
 ub2w6TGqsnASaYZvaoN6udnUu9T90U2zW0yGu/mIrm2JjJJYqTpjBLZb5yEd9DKITozQQPlU
 oy01wldpTgaZZh8nRw20C+UJMUK0JisFBAB0RtPNwCMC7ci6H6IoOxZOTkPEedFQ0Gq/W6Pt
 Aj4kFBHHoj+oqXzu+USp1fZnyV461q0AEQEAAYkCPAQYAQIAJgIbDBYhBGWYhTxcLsRL82Ii
 Szqh9bNH2UCGBQJdN+pPBQkLus6lAAoJEDqh9bNH2UCGkMYP/jdJmeAn9qDzcSP8vlVEvVAq
 l0Prdhv9+EKKOVTCpEhFrMm9ecCgjJ7GH6C0SY9eRFOd5Xz7F2HzR0RYdqE0wndvsu14nGMT
 wsiBlVks/KAYHClTliH5Ai/l6iMReZ2/E18GsfqAEadVv3c8ixDCHbFjUeePZXl6bzyGE2xY
 2svs4xZxv/jKmgrv+utHN75Ks4NaaxObUO0BfM8yPyiX6CDUuoSoEBTeQpIaEnmFcKmeW18X
 FgtxYBUhy3v/WI5FtBMqSx80znmlloo/ci7YschP0YiR25BO5/Lqtep3L4hz6vjbXFEbzWSx
 TJbBuk/Je+Jd/H9w5CI58GThGXcFaIjmys3TBtxDjgh+/e6OmYOCoRu1DVtz/9xP5egmuTLo
 4ihKW8Snc78gN1U1nxxlR9wHyRU1HKSgtEsF/jXawjoUiHSAJJ5ipPRSHeCRAHqShy8yH0BO
 q3b0oydKYcIjKmpHEGqz2X1t1hOsFwCoB2SJtOxQAe5qi/CFfpM189GP0qiXxsMwlldPTsqi
 hhK2kdJtQsFuoFQsAddGk4feyWCToDPkIwk4TImNj3UbZvAjtNGL63iaNIJCJ0P+Wj6mKvJa
 DcYJHy6jT4Khs/iTyTUt0ocgZskwNr0aKsr0J6uGjLjg1Rd3wDOZleDfnH8OIcuyN0KBaruo
 yxsOKc06fSVmuQINBFbUU4kBEADWr/vCGzsQmXqHzHLnTfTlx0nq18tB/Ws3JJxHKihD/CST
 CnYpsWz+Ce7QS5mV8q8zIUSYaCSkzn91zQkKe0la72vIKyS963b7wFNC27QZ20v6wuAFEfnK
 7rr4TRLMLXRd18B+mcwy99b1qySbc34jwPPhEkaQ+F+/2Ur7V1ZWhfyBOpVbOJrt4awaqC2j
 Q76AwFrAyHN6cAAoyrIjiG/ERARumriCbYunZjTBHAAYw5RL/M6JvtIeuCtUBvn0RniENUHU
 wYQEZVVQM9QdY8xStddsRWVQ4+8jIIZk3TfyBTM/djap5qqXr7VbrMle85DpV/wCbiIWkjVR
 1/OWU112GFklrXMoYGBYZqVuSLU0irq/o01mfHq4mfFm8XL0Wd7dV+da0UaTggigGumEiEO8
 9Z601m/2gVlXMrhxfDVffeoU8YurrLCZOxlRKV7+P6aB8aeMtE7Q3U+bCDyOlMSXO+0J92OF
 LEVr+7jq299R0s7sM3bPU/0IhtkI2yqknCXQL6Br7on3lRa/yCxx1B0y3XcAMYm7WWqiTuEf
 kLmhj2uIFx2hOk8WlKUjrjoLCD94Wr16GurtKCCNPpPB9qrTBmKbeCMqV6PsDkW7rgPGGT7b
 k9yv4eebSHjV2p2eQqbZz5w1d5LYK4PjwgxT3/d4WrdM8eNMCBQlhZ48PAAO/wARAQABiQRb
 BBgBAgAmAhsCFiEEZZiFPFwuxEvzYiJLOqH1s0fZQIYFAl036jgFCQol/a8CKcFdIAQZAQIA
 BgUCVtRTiQAKCRBC4su/Oi5m0zjMEACx67a8Y6vNVApEmRR4yopZGz44J2P4XEF6ef9jryw4
 tnd9Gow057M2syesHI0f2DqmTG9GL6H7mWA66oNNbP+UWcd9XArPh4UUF6he32Xt12qLF0Ch
 FF6nxh281/lj3scqem2lbIjXNoK6Av+OCgS3MSdW8gP1MU3WyDdYcmoHHotFB3jgaUy891DR
 K7NAs2ak03uINxvmi/8JbDwPTSaOkvwi8cbpCbN1Jp7cKA/AI1VNMB8SXPdmcaCKo++aZc22
 9IYdSGgJ30OJruID83SfdYFjZLAAw/JWUjYPmKJDeI+r0gyI6rz8So/yiUDNL+1R4wSplmWW
 +wqmI4vfgzc/HljqUY8282tikqmhIOQThlcwexNDqWv4D1TEAUNUn9QXIbqPp4gbJBSWoWAC
 3cEhkvsptPfD+G0EEZdvJCdPDRCd0tH8ErG3POTsQS9/e+j1VmX5tpHHzDHhU2p8ee0eZ0v0
 WAFUi1QAE13vNmjAwgxWj3GC3cOjGeZEz/6jfeKOTzWCqgAYS1uLHkeBxA4O9m4kh3k/6/Oh
 Rp3qMwv2AqDf+e+guDFOEVVWtRB/R9yHxTM/cuPJ8GWVCEf789J7KjSrPkyRvu6U7KlwCaG8
 VTXMyNxUKbzNlwLIIYXE9RD7URFRaZNErKa7csokEG1YgWEQCkprvbXopleShFigAQkQOqH1
 s0fZQIY1FA/9Fed9OLGavChmwXKLnJpu0BjkJIVbrJaBFaKCF8MWaDP1SCilL5q1jPtuekPO
 Bw1ZNm6wTIXxnte5SLhxhAGjvD0Wvz1kGUbCKPJ+TT0VPqkIfhNG5VMxdNeneLdJ90TZKPlm
 msH1CcZJq+qJkNIGU9roL4MenkOdjpD9ENCNllEcY1cvDSO+rKLgx5wJW5c4uvPsagkW1YGO
 yW0oAbLMdsWy3wyhYmqwD6BJzCz/y+KgjM5yG1arHWVNp5IEwD4nmjhQ0dFUN1pAEZYN1qJv
 rrBhccW/ft3rI2HQ02o+52GuNR6Qt1Rl4idVSft3SCtMCbtgJo9Aobr5l80pnronetpn/Lkz
 42TCAQnZ2KHBfhteI6VNaBNTb7QYH+GClVJS157ElvY0dTYeL20qDAlStt9TK1/XqsZGxnwF
 sp9HLi38G/enVih9r3omPl2LKWbLHKaRL/PRwjNzF6JfxnsEmx3jWwVgY6aHAgmlMsQI4H2n
 uMQDDldblmzRzTwmjhNKHXh9whBD6qcchO7+GmioooeAZ4iCzLvmVVV/vv3kvQ6rWczBlXsj
 GDeZxXxkn50nP9D9lvgnt60WWx+NENxilZ9YdfQVo9pAVyQVhaWEjuWZAoy8MF6MwzCiUtPI
 d/+2PBVvhp4A6ioJlsvV2WvflP0mSVuNJwczN4VMvhFZLxY=
Message-ID: <56105ce3-f528-c9da-d8dd-370c80829e53@mein.io>
Date: Fri, 21 Feb 2020 11:08:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_020834_510695_39CE8170 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] Next maintenance releases
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

I'd like to release 19.07.2 and 18.06.8 sometime between Sun 23rd and
Tue 25th. If you have pending important fixes you like to see backported
to the respective branches please do so ASAP or mention the commits in a
reply to this mail.


Regards,
Jo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
