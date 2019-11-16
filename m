Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99387FEC7E
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 14:54:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0zgfUvfwm7x/775ly7mFacQO9p/0HZpuckSIhzIiyXw=; b=Fx97ohEexC7+K76ETDFLhF0ks
	9O/oH1DG3FbFwkSWHdV1HW1N2toJQRp5urp6StwITdiF0nVW78GbJNtJamKUdKgbxhKvDDwc9+mqu
	ExnAk9j3crIatn+q0AF05EZZneOKfvoYmpFLWGqgmj6uYMZMWjfotch7CBuYyoVCfXp7y6XSQRMDc
	3D30s62tvM47RmqJUJPBvdThgLsYC20CQ6uaBFpIKUNwuct4Wm7vy+pF+ZDqzYe8B4RGvq1JgVXkG
	FUabZcr+LBDthWNBgaIwSILiyoINjCfrw54NGbsmrFOKwVmrVJFKEnWxxaTAN7T/NIyd8u9TQR65j
	gNT9qnUhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVyX6-0004K5-T6; Sat, 16 Nov 2019 13:54:36 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVyWu-0004Je-AM
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 13:54:26 +0000
Received: by mail-pl1-x636.google.com with SMTP id h13so6726566plr.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 05:54:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=C7EVvTWke/kb1Z5Ye142m4O/mD1GwCB+rq8zR7KBoVw=;
 b=uXeDEJrWTtoRCsPphd7qZEo4EZHI1EwG6H3efOrFpEwI7Tr59SpzA494n1n3tmNaty
 zWSD9ceAMjscUe8QW6PLP1F/nvf4YtqbLvEHja58klXG8mzMIX2/xdjk75HFxxhvfb6l
 6YOEjMyj4JzgLFctI04g7DBdY3NQdv/hyTeoQeusGLRN0lOPl4VD0nyXhLcdIgNbYkoW
 k/SEnKUiLuz9UfGCB+0Cx9Mdm1vkYEXkmL9/zB/Gf8FAQMv//YznOXtiImsP/o33JQRA
 BZMj0oG4n6ZCmWe52+GkwQD7QZMoxquIlUM8+nlVvTlsFUIGcAojKN1r2EZHOZ653zxi
 dwlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=C7EVvTWke/kb1Z5Ye142m4O/mD1GwCB+rq8zR7KBoVw=;
 b=n8EYBEa3KJUnWYowSMgWHN1+kgtUzX+y3+HftR10etPugGoI/jlnwhFO2JPceE/QcB
 NJb5DwpHeve4wczw3CWG0uVijDukgfl6h26MLgGuL4oF/bv7bhN3/ZHRobTNJV+B2Sbc
 ZfruLfGlxzK8gcRzLsH3GqVJW3H/M5ZYUHKfAEaERgmwuaE5ov/aRxW89g6cQbu5ouAn
 CtajeAOEoRmcIEquZHY8ESYUy0yYCkKnl5SR9PSlsAncq/R8Zb23jCi8jm4nePBi4Ak2
 SoyLeXci7Vq8IrazdaYnRDEWabWIB05hCaOLsieOZgSgnW0fbo/44NKC/Xm9mDa99h1j
 9afg==
X-Gm-Message-State: APjAAAVee76+uqVQvzSrzrqrAKkoLrCaXn15ibFmgjnTPe+MetJYbgVV
 winyzJXngq+s1p9Kt6b9BCAJ/tUB3jU=
X-Google-Smtp-Source: APXvYqx7/jordws4uOoo3DbQTjAsoJDsUX2eWRUEuf/yV80YzOp5jxU8PIG046eE+udWH2cE9T4oQQ==
X-Received: by 2002:a17:90a:4e5:: with SMTP id
 g92mr27008590pjg.94.1573912459391; 
 Sat, 16 Nov 2019 05:54:19 -0800 (PST)
Received: from [192.168.8.111] ([103.84.137.195])
 by smtp.gmail.com with ESMTPSA id i22sm11756355pjx.1.2019.11.16.05.54.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 Nov 2019 05:54:19 -0800 (PST)
To: Paul Oranje <por@oranjevos.nl>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <3168F0C8-7645-473B-8D5F-462C0F360720@oranjevos.nl>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <39d6ee57-83e4-7cb0-f160-081163a7063e@gmail.com>
Date: Sat, 16 Nov 2019 21:54:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <3168F0C8-7645-473B-8D5F-462C0F360720@oranjevos.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_055424_383080_0F211553 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:636 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Silence on the DEV list and what about 19.07
 RC1 and 18.06.5
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 16/11/19 21:14, Paul Oranje wrote:
> l.s.
>
> Lately no new messages have arrived on the DEV list, which is further more remarkable since we have two releases and no word about these on the list. What is the matter ? (this mail message also poses as a test).
>
> Regards,
> Paul
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


Sorry what? Please check the mailing list archives. There was an 
announcement about 19.07 rc1 and some follow up and posts about the wiki 
links about it being wrong or something.

-Alberto


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
