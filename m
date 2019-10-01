Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 429B1C2E77
	for <lists+openwrt-devel@lfdr.de>; Tue,  1 Oct 2019 09:57:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RfX+uB3sieVnzeTrag/xMYkoSpGVpd26boEC2a4qv4Q=; b=NAWZ6EW+XT18G8WpBk5PjCm5S
	6FKAbQVIbdGaCeqMjUnXprd73lv1pwk8JXrjutT0MBr65uVp5RYXTY8cXuXYMP/Lh5OEv0ISKry4z
	uiV2/uPuSxRLITg/bFPpl8mvQwnpYeJEjTs7lAXE1H2KpOcYVaGRqfH4zZOHl9Rl/q9dybWElHjae
	6qv0QxqI2u9Kznr/uUtxfvjsSphwBEAhtrpazrtCHvLiHJkkUnBZvREEFv2r12WjqXbS3EBpBaoK8
	y9u9PT+MCQbPLoWqiNTELxHqzmYh0XGTQ/kDjc2+lsGBg91YErBX1IrTcfx19x6Buq1P9tD5RGjkS
	rUO2Cdd8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFD2P-0001nG-4M; Tue, 01 Oct 2019 07:57:37 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFD2H-0001mp-Cu
 for openwrt-devel@lists.openwrt.org; Tue, 01 Oct 2019 07:57:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id a6so2125282wma.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 01 Oct 2019 00:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=HXS1bjLGNSR57CFEokdMMH7Cu3yBuDXFNeq2ZIi7Z14=;
 b=mdWSMpu0/kfTdDhZyPKQAq18izLBu38KcML+DT0iVOInpeaEFji0IAd6RJy1UfttOs
 o6wZS6NTn0V5uxUK5zWRBziK+5iiZJioE1ugkhOgnS/0UZCVNgi8PosKvleapp6JtWoV
 fZkbIWUGuHJCWtkXrqKL7vBlX/ToZvMMpkz0ZhbXK5sAeo1ksNLdvOF0S8row8NEGyaU
 VvTWHUDTP/NKFV7PSZwBSyARUaxA+t6XHimL5J03m82eXEmfID/iomnGLg8u/sUGulEA
 +lYiGJ23S2ENnIlHnAngf9o93q2fple9xo4GlOwmOD7Rp8LKvUSp6bJ2GG6m1OF7uOPo
 NPrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HXS1bjLGNSR57CFEokdMMH7Cu3yBuDXFNeq2ZIi7Z14=;
 b=MXFfqxZfU1IMmMP2NN5lY+OYmhAUiekADREvO/zn9l0qxvA6AcsssLEFm6Z+doBcmO
 7P8/1esr2R0gi+YQqdlpLmT19cLHvB5k5E+30fF3jiNAfXVtnwIQQvCy1aHUNr93JkYz
 jcpOQ7sRTGzFMLa8N59MZljVqCSHIAtfrVzcvDuaDot8Lqskd/CXxJ19rIpSHUWHxWA8
 5OIVreViWbVd4JUzJ4LpvTsrst3L3gUY3yC1Lw0IiUhK5h8XkwkUVVDhR46Ynnt69l99
 DlITWQ+MYVaThoWJDnp3THYlx5cVSjyMi+WAcKxEXPFPWB/AN9YxvJLhM5hKnFSifwWn
 50xQ==
X-Gm-Message-State: APjAAAVKkhdr/RPpuWLKxWiWARQlRThNxpc9egkCO5ha9nJ8lC4vUWZF
 mgPIpLKFroVxLuz9Me4D3NF7tqvj
X-Google-Smtp-Source: APXvYqxQKwx8YOVjWwW1mQPrxE1BEpSAFdmrrGRV/OsXKfJOLtpxq5UGqhJeBl3p1xbl+67lZo+LQQ==
X-Received: by 2002:a1c:7ed7:: with SMTP id z206mr2709671wmc.124.1569916647733; 
 Tue, 01 Oct 2019 00:57:27 -0700 (PDT)
Received: from mamamia.internal (a89-182-146-189.net-htp.de. [89.182.146.189])
 by smtp.gmail.com with ESMTPSA id
 r13sm27060464wrn.0.2019.10.01.00.57.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Oct 2019 00:57:27 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
To: Paul Spooren <mail@aparcar.org>, openwrt-devel@lists.openwrt.org
References: <20190928204447.19627-1-mail@aparcar.org>
 <b8c01354-65d6-3cd2-0c76-62c538351137@gmail.com>
Message-ID: <31f2cec0-cb39-aadf-ac9f-858ebbd51020@gmail.com>
Date: Tue, 1 Oct 2019 09:57:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b8c01354-65d6-3cd2-0c76-62c538351137@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_005729_460568_9955A6C1 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (a.heider[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] toolchain/gcc: switch to version 8 by
 default
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

On 01/10/2019 09:45, Andre Heider wrote:
> Hi,
> 
> On 28/09/2019 22:44, Paul Spooren wrote:
>> Main motivation for this commit is the introduction of
>> `-ffile-prefix-map=` which alows reproducible build path.
> 
> compilation failed for me, it tried to use -iremap. Maybe you used 
> CONFIG_GCC_USE_EMBEDDED_PATH_REMAP?
> 
> Attached a fixup that works for me, runtime tested on sunxi.
> 
> Regards,
> Andre

and with that fixup 
package/libs/openssl/patches/120-strip-cflags-from-binary.patch prolly 
wants to filter out -ffile-prefix-map too.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
