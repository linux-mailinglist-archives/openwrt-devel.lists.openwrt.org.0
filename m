Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F6A6533D
	for <lists+openwrt-devel@lfdr.de>; Thu, 11 Jul 2019 10:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y/xaagszaDS9Vcj7Gcltl0kv90A5ClDsfs/M9cn+bNA=; b=nhwfIo3YweGxlecpfPnz0oHQ8
	BGuZboGlPry/qCJzVBTb0DzSBoLsM3VUnXdEPmJZQQl17HD9X1g3Bkntem+ZpZJX0y5jbx3LCN1JU
	cdHAPBJmy+AK7TNUUHUJtAFb7mzEicySJIkfQNL+77X5AVAjwArHBl6feBycNq6QVBj+gKWL2Mr7z
	uqZ3/o/HSY0bb0xo1SakIxR99+sANUwl3baiSFQ2WN2n1UWoRe0b58JvGqXTTt9Wrc0QGZxRW4A2q
	Is2Yg67Ihcv2uv/HhjYbjHHLdxTtT8m4SfmZfBYASuH9+++gtc/y0Gj27JQ1H1zlW9Tln7pS2sTmN
	aHbHJ+ZtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlUVv-000466-6j; Thu, 11 Jul 2019 08:33:15 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlUVj-00045g-Jl
 for openwrt-devel@lists.openwrt.org; Thu, 11 Jul 2019 08:33:05 +0000
Received: by mail-ed1-x541.google.com with SMTP id m10so4928157edv.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 11 Jul 2019 01:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=GbBeFhfM9MR6SrChY4ZMbiZNgmPcY+5Qy/d6T4y4/tY=;
 b=apy25vPNkNWgZGpkxrn5LQluid6rdkAiMB7RmTxJ+ScmRT0e5HFp8jIp2/GaC+4sA1
 Rp0diEnoSwTKDYmcG/gIgeOW9UcJ2djbb3n6ySRIakRMpjSZPleiwRDlvDIbhnv+5I2Z
 KbkcBeiXLOX4fyZvOk0+mouIXEbSlJMydn3mr0od8XiTaByccvfoJv3AOnfupnFZXR1C
 Ahb85ZK/AOxTLop14PZLRkM6orMSFpjoPM9+nvWr8k6yg1nkyqWsG3H7NDOr3TRBe68l
 caxTuFR88acJ4pKIiQZRYVhHeZAkSV5OBU9C1y+dKz6lNbl2+VSIM9tX6JMVc4KaB7L4
 EbRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=GbBeFhfM9MR6SrChY4ZMbiZNgmPcY+5Qy/d6T4y4/tY=;
 b=mBDr9WY7122HpbtMqug5yjXzq/V0i/hdzRLsMkQJPtHGNLWUMLtjbFt/quwlSPcy4J
 Q6Py9z5qSW5vfyxjiKsbLfJjxtvVDQRjjyHPpyAs795SiO20KM8JMp00QpNMqmc5sddb
 LohKgtm3ymH03OVqh2AVIdZ8Pjm3R1yRqT6PvKWsF9lBMka6fTPrMVq/2qNeIno9AEvT
 fxEMUf3GkaK3aGQOrw2cYmnoylNifz7Tvxt0FBamBX7PI6Yr1YfH6gCWJsmKZjA52pgR
 t2JVzCfqP2dYGSEmQ6f/l8BwMzyDB4Fhpkl/Kp4tzW9EaNZNOgLGAYybLaOPljPacIa/
 GrHQ==
X-Gm-Message-State: APjAAAW2m0uQoAshsuXtQl7OyZCyWzXcT+cTrcV6/ddoHgRuHb5RAX2a
 gfNaCcEEW5lct3kvf/p02HG5UZHs34DG2A==
X-Google-Smtp-Source: APXvYqyj5FYNhQXpegPtV8KmnhXGSmdCVuH1xWBVcQo948NJ+ZMYMnEPvRYsGf1WWJ/p31k3QHsEHQ==
X-Received: by 2002:a50:976d:: with SMTP id d42mr2154422edb.77.1562833980512; 
 Thu, 11 Jul 2019 01:33:00 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id w35sm1469053edd.32.2019.07.11.01.32.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 01:32:59 -0700 (PDT)
To: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
References: <20190707172809.22396-1-hauke@hauke-m.de>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <09914b85-376a-fb30-167a-4151671972f8@ncentric.com>
Date: Thu, 11 Jul 2019 10:32:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190707172809.22396-1-hauke@hauke-m.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_013303_716855_0AD7D425 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] mac80211: Update to version
 4.19.57
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

On 07.07.19 19:28, Hauke Mehrtens wrote:
> This updates to backports-4.19.57-1 which contains the wireless
> subsystem and driver from kernel 4.19.57.
> The removed patches are applied upstream.
>
Tested-by: Koen Vandeputte <koen.vandeputte@ncentric.com>

- Quad radio 802.11n (ar9220) on cns3xxx

- Dual radio 802.11n (ar9582) on imx6

- Single radio 802.11n on ar71xx

All running in IBSS CCMP


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
