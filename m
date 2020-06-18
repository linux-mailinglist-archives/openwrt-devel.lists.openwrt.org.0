Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A251FFC75
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jun 2020 22:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1lut8hqw9OmFXsH8UjwSixsJa+iM7k7R6DX1b+ZbmG0=; b=N+RPhJ2opxX2aY0iZjAHRZvz7
	IEjU2iYuOcKAZqHVQ/ZSEujQiW1hAi6udnG6/z/pEXZkiIs7g8J/g5Y3UebFMUOQMgJPITRwsotQb
	YOROnhbtS+1q5wap0cb/6GshBnmSPfSrpW5Z4b5oHPcd9VCLrjvx069OsB8vZ3yslzB5je+kNOVoS
	aXDQfPw+ijyTnO//KyRtDAVL1WHAXuUFba7rpk1XzFKkMcUHyTm3hqsWYmxqz5jLH2L2n6+GAsTRx
	vDQnXeD2DgaU+Wu49T13vMkbr7RX60lVzVQTtxFGbGRkC+GMNuIgFp4xF2XifRrCenuFygcdCL8nl
	6VV3LpT+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm174-00013c-Nh; Thu, 18 Jun 2020 20:26:18 +0000
References: <20200618094858.1929-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20200618094858.1929-1-freifunk@adrianschmutzler.de>
Date: Thu, 18 Jun 2020 22:25:58 +0200
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
MIME-Version: 1.0
Message-ID: <mailman.24627.1592511974.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Martin Blumenstingl via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org, Alexander Couzens <lynxis@fe80.eu>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH] lantiq: fritz7312: set maximum speed to
 100 mbit on 5.4
Content-Type: multipart/mixed; boundary="===============8125412222015338363=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8125412222015338363==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8125412222015338363==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm16y-00013A-0D
	for openwrt-devel@lists.openwrt.org; Thu, 18 Jun 2020 20:26:13 +0000
Received: by mail-ed1-x542.google.com with SMTP id x25so5869622edr.8
        for <openwrt-devel@lists.openwrt.org>; Thu, 18 Jun 2020 13:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=T3F9tOK633BPZ6fZxQV/fBzBgCvUrNGACvcIgNDophI=;
        b=mgmnTQW65YPW3L2/2jVi0CUyqfl99vVQde8x6btarU+1U2B4eMphqZGWwx0rJrnF/s
         GCQ+efV61je+TOtja6cOlGgef9/aD4+1gBZVx2s/E68zTjVtpLSyO++VxOHmvAYN1a9T
         x51hcA6X4Ew3RhZ6H30OnoPqzletIewpnwkgy/2jzUTdm4hLYzzWz6mpCHTDVd/BdjZ0
         Q4oHqPwODxQeJZgllGBYJOKOSCAjV0zRipeCgfTaHX6mvN5CumCoU8lIMxcYVHTs9fl1
         j3L7sNt3aQRZwf32LQv1/jwO6TjzfvPwFZ1JxSiaHSAG2rhH6YEDcr5PU/YEf+9uOL7o
         rRvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=T3F9tOK633BPZ6fZxQV/fBzBgCvUrNGACvcIgNDophI=;
        b=gwRiw9pGxYGHBir6KWUPV9DHAtotk3BVBYNJS8eOj4xZooECxMOMhUm1EY2LaSMQNE
         LTqLwFSgnK7Mz+3zh9dEgeppsR7T66axtPmAYA6c3Cmx6iiKHnzqUZn2f0goCRixsfYU
         yZKUJ+3NJki4m9mXzNV8LfGWH/USb5YDqbHZbhED2zOpfI4jaOt5V5ofWeUbGu9ZiJ0C
         cXsKTN6mUvVBAp1gA0wgaFQxl3KveZOqWVRRY8V4Ag3py57316E9z4ekEwP8nJ7/FGYD
         4r9kAkv2/26mgoeKXXSqbj5RpLmperqntfqzlYknTdJRFw71vDoJGlyjC0/TJRyE1XBW
         fyCw==
X-Gm-Message-State: AOAM531dSBs8MdDa65l4dca0TCkEmSA5iGVatXKHFDhPaAHR/9Q2+GMy
	CZhUY2zzhyKJrILQNX8QtPB7+SSWC4epJwRre7Y=
X-Google-Smtp-Source: ABdhPJyMesN0bp5r3SGnsSrisYhNXKxbvbcGlMnC6OezVPhBqPxukEs+rX/kBvWxorS2zrHNwxto3LcHeROhmhWWJaY=
X-Received: by 2002:a50:9dc4:: with SMTP id l4mr30778edk.52.1592511969390;
 Thu, 18 Jun 2020 13:26:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200618094858.1929-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20200618094858.1929-1-freifunk@adrianschmutzler.de>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 18 Jun 2020 22:25:58 +0200
Message-ID: <CAFBinCAyE_sH-FwqSEDOO74b7xBxc=vqzK758UQQ9pN2NpU2Eg@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] [PATCH] lantiq: fritz7312: set maximum speed to
 100 mbit on 5.4
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Cc: openwrt-devel@lists.openwrt.org, Alexander Couzens <lynxis@fe80.eu>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_132612_039837_A8197A30 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2a00:1450:4864:20:0:0:0:542 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [martin.blumenstingl[at]googlemail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

Hi Adrian,

On Thu, Jun 18, 2020 at 11:49 AM Adrian Schmutzler
<freifunk@adrianschmutzler.de> wrote:
>
> The fritz 7312 does not support 1000 gbit. Advertising it makes it
> worse. Some NIC will change to 1000 gibt and turn off and on again for
> ever.
>
> The previous patch in 36f628910b8b was only applied to the 4.19 file.
according to [0] the 7312 has a 10/100Mbit/s Atheros AR8030-A PHY.
Do you know why it's advertising Gbit/s capabilities nevertheless?

I won't say "no" to this patch
If it's a hardware issue then more boarding will benefit from a fix in
the ar803x PHY driver.


Best regards,
Martin


[0] https://boxmatrix.info/wiki/FRITZ!Box_7312


--===============8125412222015338363==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8125412222015338363==--
