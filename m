Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAA31B883A
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 Apr 2020 19:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dczvtAlFbP/g+P/XZ30mZxkm086kySPHhurMXTDPHqg=; b=pK/9segukB4vrN
	hRVrac6jaYX4utBnG3y9nRF06nrLwOwZs1cYyJnZdWy8bvuTu6l9EUhfgJ6YUeHwNrxCG5VF/NdD8
	mnid4Y+D3quDncD+6fQT+LtFH3xyU2rVgRk8Fk/m7fEq0qvferkFWOLmizSS/s3e0DiW4GfCKqdog
	VXj+XrcnIyTEJd8HxTeqWtMrDtz7FdCfI8dYbfLsPoiTUS3yHC7KRd7EAz0l8MgnLl4ItEFkYe3Ne
	kmUTPj1P6bGMDYY/sfJjrYE6gW2ODFRUVXGOomHOFg/11WpmfACbiLxn8eIwvBsDxYYu8UzkMEcWl
	dyd+I+qk2x0hdjM2+D7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSOtZ-0001pl-B3; Sat, 25 Apr 2020 17:47:17 +0000
Received: from mail.lucabert.de ([2a0a:51c0:0:52:1::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSOtQ-0001nd-F4
 for Lede-dev@lists.infradead.org; Sat, 25 Apr 2020 17:47:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lucabert.de
 ; s=2020;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
 Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=y7LUsLm6h1vDdfLKa5/fbkj7UrHs46TEUB8l1RPT/Z4=; b=SI14gm7PO464UsG+NUEeD8mSCu
 xr3fCAyrJHqZTuOOJ4A3BDX9Wn8Bj5ZlaACS3uuFyOD9vX14U6bbJseT38MjHmyUpQexJKrF3Yfo+
 +F8fm+QG8aOMOfZ6sVvPdWEsi;
Received: from [2003:c2:7f18:bd00:2::1]
 by mail.lucabert.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <lucabert@lucabert.de>)
 id 1jSOt9-000498-79
 for Lede-dev@lists.infradead.org; Sat, 25 Apr 2020 19:46:51 +0200
To: Lede-dev@lists.infradead.org
From: Luca Bertoncello <lucabert@lucabert.de>
Openpgp: preference=signencrypt
X-Face: *N]JhbB="`Ho]_HEy]Qn@=#}#T6Vx3(!v3%-=Lwa[wIk=1s&:}id_AN,wf{$tA{8HKlwU?oOm!.s.`}V-eD0+^qOUWZ@E8qyUK$y#j3|JBnvoKhpY/U@`"|@}$UuZQfyS1o&4(DceOp/Z"8[.S|lFMA;
 IC-Qb=i"z$~/mG)Ug"k7b!YT[r6b$'}ScyBxev]mRJf}2Lm:_!F@Fp82w;
 N-}hPXl~vkEZ[PjiT~R{RT||L-%JV$HmY^`[_L
Message-ID: <3a7d11bb-dd4e-11d9-c867-7f97e86af293@lucabert.de>
Date: Sat, 25 Apr 2020 19:46:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_104708_647426_5AEF1CE1 
X-CRM114-Status: GOOD (  13.76  )
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
Subject: [OpenWrt-Devel] Upgrading LEDE to 19.07
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

Hi list!

I'm not sure, I'm asking to right list, but I didn't found any other
list about OpenWRT I can ask...

So, I have a "TP-Link TL-WR1043ND v1" running OpenWRT 17.01.4.
I'd like to update it to 19.07, but I read on
https://openwrt.org/toh/hwdata/tp-link/tp-link_tl-wr1043nd_v1 that my
WLAN-Switch is "discontinued"...

If I undestand correct, I can upgrade to 19.07, but it will be the last
version I can get, is it right?
If so, it would be not a big problem right now, since I can update it
and in future search for a new Switch to install a future version of
OpenWRT...
But the very question is, if 19.07 runs correctly on my device...
I'll expand the FileSystem using an USB-Switch, as I already done in the
past with an old version of OpenWRT (after the update to LEDE the system
didn't use the USB-Stick anymore...). Will it be possible with 19.07, too?

Thank you for your help
Luca Bertoncello
(lucabert@lucabert.de)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
