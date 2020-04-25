Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C091B8876
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 Apr 2020 20:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:To:References:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yhPO1BGLZzJ8xGolkctxh0yyK/bUptpOfkkwPVvKMPM=; b=ew9uY9BgQ+0QM4
	5HwdF29/ji5BsmRx8zzAxtT8WCIsXDwa1gHzaaWjJ2drl1r7KTkor5RFBZFz87nlACoCFjVn5KROX
	vzgpfNtf9E782ZeHMMxuw9Bh8ch/MbZ6UrKh77HwhDZ84LVpAZBC9S4Tt2HCbxBH9zLn7Re/Ng/Xh
	aqlV5Ab0S8PaX1vYEqhwR6eX9v6OGEbsNXgG9inhSZTpj27mGxYGHY0F7W64sctfbgiUwqVY8D37W
	q5vPDL69982UxcI2IQzHhqk6fC7kLlQWKwIZqrKNm8Rg//gA7Ck3JJAyL0KfPsY8ELH9rM5hYCNnU
	zxyXcT/0kiioNlAylq7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSPM8-0005py-8i; Sat, 25 Apr 2020 18:16:48 +0000
Received: from mail.lucabert.de ([2a0a:51c0:0:52:1::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSPM2-0005pJ-21
 for openwrt-devel@lists.openwrt.org; Sat, 25 Apr 2020 18:16:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lucabert.de
 ; s=2020;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
 Date:Message-ID:From:To:References:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lJGf/b5F4T8vZgrnLnQ70BWnbpmjoKgyLkQQjbDU2iY=; b=S973n/G22PWAF4/Zk+zqZTMBUB
 QWYRhXNud3u10gNlk71PzZ/UJuMUXp6tbDhmoV8JodJhIp4hUNe5s9UN3jX7dsH1k17YKSN3wtvVw
 Gq5XuiISAtSNT9bnt86vT3Glc;
Received: from [2003:c2:7f18:bd00:2::1]
 by mail.lucabert.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <lucabert@lucabert.de>)
 id 1jSPM0-0005nd-LO
 for openwrt-devel@lists.openwrt.org; Sat, 25 Apr 2020 20:16:40 +0200
References: <3a7d11bb-dd4e-11d9-c867-7f97e86af293@lucabert.de>
 <bd261d22-6ad4-a018-63c0-c2e5ad9b90de@gmail.com>
To: openwrt-devel@lists.openwrt.org
From: Luca Bertoncello <lucabert@lucabert.de>
Openpgp: preference=signencrypt
X-Face: *N]JhbB="`Ho]_HEy]Qn@=#}#T6Vx3(!v3%-=Lwa[wIk=1s&:}id_AN,wf{$tA{8HKlwU?oOm!.s.`}V-eD0+^qOUWZ@E8qyUK$y#j3|JBnvoKhpY/U@`"|@}$UuZQfyS1o&4(DceOp/Z"8[.S|lFMA;
 IC-Qb=i"z$~/mG)Ug"k7b!YT[r6b$'}ScyBxev]mRJf}2Lm:_!F@Fp82w;
 N-}hPXl~vkEZ[PjiT~R{RT||L-%JV$HmY^`[_L
Message-ID: <f1152af1-19b3-5d9b-11e3-056c9f703e85@lucabert.de>
Date: Sat, 25 Apr 2020 20:16:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <bd261d22-6ad4-a018-63c0-c2e5ad9b90de@gmail.com>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_111642_098866_425D92B0 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Upgrading LEDE to 19.07
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

Am 25.04.2020 um 20:12 schrieb Alberto Bursi:

Hi

> The only "discontinued" is the "Availability", and that just means if
> you can still find or buy this device new from somewhere.
> It does not mean anything about OpenWrt support of the device.
> The device is still supported.

OK

>> If I undestand correct, I can upgrade to 19.07, but it will be the last
>> version I can get, is it right?
> 
> The main issue is the warning about 32MB of RAM you see on the top of
> that page.

I read it...
LUCI says, my device has 60664KB RAM, and I can see the same value
checking /proc/meminfo

> If your device is HW Version 1 (white case, black antennas) then it
> might not have enough RAM to run OpenWrt.

I have this device, white cas and three black antennas...
But, as I sayd, it seems to have ~60MB RAM...

> You can try upgrading or asking in the forums if someone has already
> done that.

Could you suggest me a better place to ask this question?
I really think, this list is not the appropriate place...

Thanks
Luca Bertoncello
(lucabert@lucabert.de)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
