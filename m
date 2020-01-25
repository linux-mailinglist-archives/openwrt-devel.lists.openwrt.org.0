Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AB714970F
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 Jan 2020 18:59:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wQyFrU5Z4FW8TBwomYQ+WBTVDUS9Glc7JXdkscMWKpE=; b=gRKLANFpuvnzA8inpY0SFmgiH
	pmKNp/ygZj6jUwat4/YsFcf7f7MOl4OzN8slIq4o1Zi+C+FtKxf2Z/d3xCjJiWxhiqY3qLpexTdVV
	RywZ4GpGMjAvdGc7rYaVWQOmoq5yJfGh1ko9b/3d4mHPSyUCfnPW5y/ATA4I2TK6JZaTVMOVX78P9
	tO9G1o5wx50i72OKNSBrvnlWxn1GKfnw9TA//HtHmGp27Ps+WiOVuhqDSd0Wun6if+BjYQEkFAaI6
	SuBP3A4dSUqcIjRNvRZ6vJKXZRkDEN8zkgBlzVSzMIh3kbvxRyz6ryu2BnLxXu/qxve5kC/dQ1vIO
	PHhBbSHDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivPiW-0006ms-E8; Sat, 25 Jan 2020 17:59:32 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivPiM-0006mb-3D
 for openwrt-devel@lists.openwrt.org; Sat, 25 Jan 2020 17:59:23 +0000
Received: by mail-lj1-x241.google.com with SMTP id o11so6193453ljc.6
 for <openwrt-devel@lists.openwrt.org>; Sat, 25 Jan 2020 09:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=jbwGrFWGd77zjZ7ZHIG7W4eaT47edkOmj2GKdHpsDdQ=;
 b=JU9E9ezoaBEvEcIdymZDc32USAYFrmXQYx+nTEQ4g+Q0hY3BlDvYG9eTzEz8RGcIaA
 kaGyodPNyaGwo4bwGe9A/wauMEiusEHNb+O2AjjJ17lhw8wi6JpcQu0okzy89HcQiawS
 nGhy/mUmnrWCDVsStGVTZ/GJ3pnNCFdKaC0vPgUBWnlKwUZWTEjtRghu5gM3B9oddcly
 fRl8v2Bjd+AUV9FOQ3BpGCf4kCRPMzxsHFBTEl61HFPk/DYTJeZlbu4uwWL36OrLpjtr
 r7M41pOiIoIoFXelJKf0endpSr12IvmCn1bGI9m3165/hQkXJFDZXjeX08V475jtPiYW
 qLuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jbwGrFWGd77zjZ7ZHIG7W4eaT47edkOmj2GKdHpsDdQ=;
 b=a39V6n2LcWIC9ZRvG4Ke2inRmXznpd1If5datxN8kjD3j6aze0RkCNjmQI0mTMtON4
 Pz77Tku6ZIQmVKQnTBn5Ts1GA0lzsRIPZR7td6gIzUXdZsjKFyoOwWUqrt6+6ZLcpsT9
 DfkAEj+2KrPH4iVZxbRx4CuIb9/qIvggDX/P8Jc3EJq3JCsvp0cfVdbbOdgVHw8Jit0n
 bEGR/xTmnl2WStdc3LOGBWLClQrLnktPulrk9E2eNks3KBJ3TVHH7Z2yhz5lZCFcwImO
 Szjc4xcdZkdOLzu7D919ErGKEo1btRDnhHmDPRAu6zY9O7eEsAVQNwxE6fSVeNI33NbA
 6WmQ==
X-Gm-Message-State: APjAAAWKC+++i4ozDUo3fypPfB0DQbjn6XdI+wKAHBkSVApi2atZujjb
 Q5EkG4A595AHlTdUFB+ByhI2VXxE
X-Google-Smtp-Source: APXvYqwO8q3DNky1lheK/wU6O/X9ZKMcGrDXW8/Nnvg9yuELSghzfN/1a3LlBQqPDfT1CBH428kXBQ==
X-Received: by 2002:a2e:3609:: with SMTP id d9mr5660463lja.188.1579975160056; 
 Sat, 25 Jan 2020 09:59:20 -0800 (PST)
Received: from [172.18.1.84] (209.89-10-150.nextgentel.com. [89.10.150.209])
 by smtp.gmail.com with ESMTPSA id f26sm5180702ljn.104.2020.01.25.09.59.19
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Jan 2020 09:59:19 -0800 (PST)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <20200125173341.13157-1-mkroken@gmail.com>
From: Magnus Kroken <mkroken@gmail.com>
Message-ID: <6c1a1b17-173d-7a5c-aa49-d94e345d5691@gmail.com>
Date: Sat, 25 Jan 2020 18:59:24 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200125173341.13157-1-mkroken@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_095922_160454_E648B96B 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mkroken[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] mbedtls: update to 2.16.4
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

On 25.01.2020 18:33, Magnus Kroken wrote:
> Fixes side channel vulnerabilities in mbed TLS' implementation of ECDSA.
> 
> Release announcement:
> https://tls.mbed.org/tech-updates/releases/mbedtls-2.16.4-and-2.7.13-released
> 
> Security advisory:
> https://tls.mbed.org/tech-updates/security-advisories/mbedtls-security-advisory-2019-12
> 
> Signed-off-by: Magnus Kroken <mkroken@gmail.com>
> ---

Please note: upstream did not update include/mbedtls/version.h in 
2.16.3. .so filenames as well as software relying on e.g. 
MBEDTLS_VERSION_NUMBER will report 2.16.3 as the version. This has been 
reported upstream[1].

I have not modified version.h in this patch, as upstream has not yet 
committed any updates or confirmed a fixed release.

1: https://github.com/ARMmbed/mbedtls/issues/3004

Regards,
Magnus Kroken

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
