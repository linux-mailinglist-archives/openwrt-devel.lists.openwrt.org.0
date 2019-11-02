Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 910D8ED047
	for <lists+openwrt-devel@lfdr.de>; Sat,  2 Nov 2019 19:53:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BP5+edYrzJEDGyGVgueeqCrMStZcQhlK/bK6RWE08Y8=; b=j2RY/ApTu4JYv8
	8xLzFptKuZIv1Qfp9EUx8JY53vdcB7FQ4+08VgzXorXJP4RAOYQ9OeGMyTNKEB6HSoudZAkxwstli
	ahkTPCr0Rsd0B2TDzkX5ebDTkme/JqC+/2ZMTVYc1GHdDcmg18Gz92vwXvTuImJUYo4cQiirdrW2j
	UIuvu8HyR/fFs/jBZpknz67n6tXd6nVJalfkuK6OQdbjDImK6KGgneYn9nK7XvUVl1tdmYTD7Xd+Z
	nF+l5bSPUYHBTgub5wqu+/ouwDGu79NYXGyrtZFHgc06KT0v6g6heU8JnNNqZPQ+F5cYkY5FO2mCg
	ysxor+qK+0ZkPLvxs7IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQyWE-0004Gn-NL; Sat, 02 Nov 2019 18:53:02 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQyW5-0004GW-TI
 for openwrt-devel@lists.openwrt.org; Sat, 02 Nov 2019 18:52:55 +0000
Received: by mail-wm1-x330.google.com with SMTP id 6so11008165wmf.0
 for <openwrt-devel@lists.openwrt.org>; Sat, 02 Nov 2019 11:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fkYkIkLXCbEJ9168eLAmx6GlfNVN8z7VRttkf8f4gqs=;
 b=mFlxzusAlaIZqZPMppjD4eUFcCEYb2lTIEEdlS3KGNNKJuqpeGZsd8E0yv1kGrkJbj
 D1UHsa67psFSijk+/HtkVTkYxjjl76Nr2Q6rgYD1QZ7lzog8sR2hboYV86FAjZPoQtj6
 bJFNNGmCqbAn2siCu4qyItIaMBJSnANmrD0A3Xjg16ryz/Vlt/25d7VdkIBpuZKZq8VQ
 lIOpQAuavSoyT7OfVZS5jKDvKosRZa/VBr8YM8FykwN05DcKGN9rYXtYrtSYB1tOZfAR
 HYZjROw0ZqgGXDEgQRiJYKrzvTUm7NTYNTmWX7Kt9bGUfc06/6YjND0A6J4DKZcDJWOB
 E33g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fkYkIkLXCbEJ9168eLAmx6GlfNVN8z7VRttkf8f4gqs=;
 b=S9KTcf090c5hdqgUd6x+RDzuzntTLEIipCmB59SM8tkPihtp6m8VhB4F5hRxLG9weC
 nwOX5XYzgtqKJAphBmCmUyOiYI+RscFnd5wvkR3NUW2k/Ych0YFKM2c11MDNr16TbDAd
 fZwPI1N3BL+1nDsdW2kGLWFLg1XOW517Acevft8eT0k1pSaS32cGfZ6YjYwoioc4vkvX
 EoYEHioApLiU5Kszr2iiZy5+Em2QATaQmNbJAsQGvDBGdSAxIXVw6rCEt3VFLrhDjn6e
 pJgawKVzNCpVFNz0d0SSo+4HepRvsL2VtscwYUnX7atN6eq1e4omQhr7gRMXdb3DQSBm
 qhbA==
X-Gm-Message-State: APjAAAXm6KpmjTAwaMsFO9+LAt9znJtMpXCs/UffNovuKoGT17zT055W
 UwTLZqk59cF0bI94eGQjFerkIdRb
X-Google-Smtp-Source: APXvYqyBwWPMbHKHCiY6r3NoJyckKfKzEuaabRvwFVxp7HUaK08sztxyQ2UeejywA7Z4nHC3ZMhogQ==
X-Received: by 2002:a1c:d8:: with SMTP id 207mr15641372wma.65.1572720771530;
 Sat, 02 Nov 2019 11:52:51 -0700 (PDT)
Received: from localhost
 (p200300F6671B4BAC9D78D6DEF5B399B9.dip0.t-ipconnect.de.
 [2003:f6:671b:4bac:9d78:d6de:f5b3:99b9])
 by smtp.gmail.com with ESMTPSA id h17sm11243019wmb.33.2019.11.02.11.52.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Nov 2019 11:52:51 -0700 (PDT)
To: Jo-Philipp Wich <jo@mein.io>
References: <f5199706-3e5f-3b10-531e-b7ea09939980@gmail.com>
 <85b37900-ed96-c4ae-98b4-4d1afe273065@mein.io>
 <0cc408cb-6459-a931-9917-6015fb06e95f@gmail.com>
 <0D6B332B-B471-47B7-B185-7D231EAE8B9D@mein.io>
From: e9hack <e9hack@gmail.com>
Message-ID: <f4e33cec-a481-8396-2526-70a578b2963f@gmail.com>
Date: Sat, 2 Nov 2019 19:52:48 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
In-Reply-To: <0D6B332B-B471-47B7-B185-7D231EAE8B9D@mein.io>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_115253_970451_3A2C8F46 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (e9hack[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] uhttpd/luci/rpcd is broken?
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

it looks like that the parsing routine rpc_luci_get_host_hints_uci() in lusi.c does crash if a host entry in
/etc/config/dhcp doesn't contain a name option.

Regards,
Hartmut

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
