Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007C01DBAEA
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 May 2020 19:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1u4Mzc7rFEnbK7mcOUNH5CbvbIQdCvYDDid2lmKGSw8=; b=GvRmIiXUBfLlH8+XC0dO7ufZX
	r89ACLHkPdTSWdCkL+WUZkhaSARJ/tdrLt7iye8nJeCbio6Wh6Uf1YDk8g/E8GB3NT6tzhsVsp9Sf
	2NAV/0r579Hek2HAe9a/2mPsT5ymKpD4hOVlzEgczV0AXV12hQ3pvs4SKc3uzRogST1YuZSr4WXs7
	D3RAEpOJbCRGviwfv1Fq09sazkG0pp7iXdix7tp1Rl4MEBnHCZJXBhpGNK0W/FDSpt0z5T6RJXVI1
	LXxXknwTgWYPTRyrdouF4TZeAufXxqIdB2CIlHaw7O7IeSCNnDjLRVZwK4smbDYEULiLERQInFf6G
	p9317xohQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSJ1-00018d-Ep; Wed, 20 May 2020 17:14:59 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSHq-0000K7-B5
 for openwrt-devel@lists.openwrt.org; Wed, 20 May 2020 17:13:52 +0000
Received: by mail-wm1-x335.google.com with SMTP id f134so3233550wmf.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 20 May 2020 10:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=6gYOgc5t/kMlLegon6JWcyQrCedb8sxLvmrcr/59mGE=;
 b=P/al0eYtVOlCnTdOeVyZQVRzFogQ4m8X+xoDjv4o4L2EJ1/IBMILqho5M6X7Yrnfu2
 yB7enbhN8/Mta1xGDdY/1BhkRbEZPChLZT7KUVDGNPxi29afjEXeIA3HnHsygQjSA9ME
 6EqHYP6R9KJ9b6ct+br0zXBazBhLPvmHDufzOfwrR0jYTnMo/yJdD2tn++C1D3MZW5TW
 cPpFQFEIm1aOhMXa9YpSfZXIX48ZBM6Q0wBPX1gEh4ILJbnWD1IXfb5XtKTF1wMUGokN
 WNxGu9wRHNNXvh1If+Mty8tIGh35LzaAlWgtQpmhdcyNDR7FfLA0dTZ63JlbBPlC6Dw/
 qcCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6gYOgc5t/kMlLegon6JWcyQrCedb8sxLvmrcr/59mGE=;
 b=YDK7hgJfPxkdq1ah/PFQqPh/XrL1j3F5gbJwkmwgOaur4hHUNJ/eo5MALogrlO/Eci
 Yl/jD5ZVB03t7iGdcMuryHMioAOHDtOco3Tzy0i1o6vWcuPks7A6a5zvNMVcq40x/6q7
 HsMemPe8Hb9wazXT/y9FLaPhACvRhn4T30CX5OAHuNNmjOWzoK9hmibexskbHy075tzn
 tYwhr9XKZ6FrzJiQB5WHwn5qsa6xQg/pUfKBUsLfJNo4SelAtnnI0K1WgVevOFgS6BnU
 gZdlMyf2xWV4fn+mxzmEe7L94YvKunePCUYSDmqoiC96BPCpDmlvA9f0nH/sreOzH3iD
 ohdw==
X-Gm-Message-State: AOAM533zPVn2QDRx+VjxMmbEPKLGpcsatZMUoYjzoAQZqtNau/w3Tj6l
 nf253Kk+ZUtOAunqV+ouQ+MwEPPeSEY=
X-Google-Smtp-Source: ABdhPJwLztBv/Y7o2gHJ7ZWEv8mKrLROQoley/odhchmawxyEcT/nfiDKzG4tVbCNWKAJOvHrhTOzA==
X-Received: by 2002:a7b:c754:: with SMTP id w20mr5332452wmk.17.1589994819094; 
 Wed, 20 May 2020 10:13:39 -0700 (PDT)
Received: from [172.18.1.84] (209.89-10-150.nextgentel.com. [89.10.150.209])
 by smtp.gmail.com with ESMTPSA id w20sm3630712wmk.25.2020.05.20.10.13.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 May 2020 10:13:38 -0700 (PDT)
To: Jeonghum Joh <oosaprogrammer@gmail.com>
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CAAP7ucJ5qwJ+4cy_v4sEnULdD9g-D8w=5Ze7d8kubK9RZFLiQQ@mail.gmail.com>
 <CALYKT1hT=0G6ip3__-pttHVr-7Vc1rOUFBnsZFc9jCnx_uu4Wg@mail.gmail.com>
 <CALYKT1h8FF5jQsS7ereCS71rT4aywZrwr+ZjNHSPghQgqx+R8g@mail.gmail.com>
 <CAAP7ucKeVq3N0RJhez45o7g0jkRenPvDUVazRy2CCm3cK64xQg@mail.gmail.com>
 <CALYKT1gNQncwkrLR_Teb1Ak2fYzohd5E0Do79kR+aWA2eVxxkQ@mail.gmail.com>
 <CALYKT1ho94oFRCUr=ujBH1vzZc5vQrTWY1Az91HkKS_F12AivQ@mail.gmail.com>
 <CALYKT1jytZ0SmMEWc-84Fjp-oSSYvb+UmR8X3gF4BugVrbZLrw@mail.gmail.com>
 <8a3e98a9-07e5-045d-d711-0a5833dcb5cc@web.de>
 <CALYKT1hqiBvcEQ+tqDdMh3tHznSt2NamLcVqzneU5TFJZxX1Ow@mail.gmail.com>
 <CALYKT1hAPtXGuKu5gGd5B6VccuEY1g6COyFK6T0FsaoG43Tt8Q@mail.gmail.com>
 <bb6a2cc5-b991-9c7f-3308-79932fd70c56@gmail.com>
 <CALYKT1j_YqguM=JWWh97S9HMJ-Kjt_BQecQFh5T_G-+hdfmXtw@mail.gmail.com>
 <2139729f-826f-e738-f560-e3268d2555a5@gmail.com>
 <CALYKT1hX6LRyq6S8iCSOtpgZUBQt6aN_qkYk=wLrfr7+5JUQjw@mail.gmail.com>
From: Magnus Kroken <mkroken@gmail.com>
Message-ID: <916b57f7-5c77-a3eb-3762-ea805b9a379b@gmail.com>
Date: Wed, 20 May 2020 19:13:36 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CALYKT1hX6LRyq6S8iCSOtpgZUBQt6aN_qkYk=wLrfr7+5JUQjw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_101346_396947_C22DA190 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mkroken[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] How am I supposed to change settings in
 /etc/config/network of default root file system of OpenWRT?
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi

On 20.05.2020 02:01, Jeonghum Joh wrote:
> Hello Magnus Kroken,
> 
> Thank you so much!
> Your script works like a charm!
> 
> I'd like to use this script in our board. This board would be our 
> customer's new product - 5G router.
> We are Telesquare Inc. (www.telesquare.co.kr <http://www.telesquare.co.kr>)
> 
> I'd like to write copyright to your name.
> And I'd like you to clarify the license of this script.
> 
> Please let me know your opinion.
> 
> Thank you very much!
> Jeonghum

Appreciate the consideration, although I'm not sure this snippet is 
substantial enough to be copyrightable. No matter I suppose - if it is 
copyrightable I can license it, if it is too simple to be copyrightable 
any claim of copyright is invalid and it can safely be used by anyone.

I have put a slightly clarified version as a Gist: 
https://gist.github.com/mkrkn/4ba4bef3f0d541aa1180bef4156b340c

Regards
Magnus Kroken

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
