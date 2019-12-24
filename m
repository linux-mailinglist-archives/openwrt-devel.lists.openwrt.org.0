Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 866DE12A3D7
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Dec 2019 19:10:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9yM/O2l5tlxG6z2hfC7eaiUT9FSzvRYcrM2FjawEXeQ=; b=KY0w5aqtvbfbLV
	Eq8v4ZwbmmMPKwGIasC77zoiV4hG/TjE4EsPWvIN0ZRKvKSwR0SSKTs7bG505gLe5Cw3TsdC1bKBU
	iBUa/nlPm5rM3t6B34fFl1Pd23LZd61Cb9JC2sEQJlF444coKmmtYRfgmxWyAWVLpL6eBEJ1bNxbJ
	tFMskVJaB9AJ18O53vifDxuzcLmiP7hW2H04rB62LLoLMn6Rx1yRf/e734P6Oa4D8Vz7SMLa/qCrp
	cOy/tl8BsUBIAAmuStmFX/i2img5ucM+eipe6pH8zIePKNPuvWK7AU8czWldooM0VtIKLSYLdmFj4
	FTeti/EOsPROEe51E30w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijodX-0006BD-UO; Tue, 24 Dec 2019 18:10:27 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijodP-000665-3f
 for openwrt-devel@lists.openwrt.org; Tue, 24 Dec 2019 18:10:20 +0000
Received: by mail-lj1-x244.google.com with SMTP id k8so21390965ljh.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Dec 2019 10:10:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=IAaUt27Xf/cZXlpBITICBRKNNk+tVN9Pxcr5UjTf9CU=;
 b=jy0xnGd4366+/zx8wxqAChonPibs2+KU0s7dGqx0bXIg4M4GluFXHdkqioD40NhUXV
 Iks+N1dan56222Qrq134kXztIAShEzC32DXfk9FO0Wzi4QyIVdNR/bH15C3ZVhMDWKb2
 8uTWxAcstnuniKyEP7xiFgtJKly+hUwt8PmtvntEMloTSLhxCk8Za2bNt0nQM/Or3nDD
 B7D2v9+WiHDOZ2xfy8YXFASoglTmJexRC3RspZyRvBT/k7LdN+WcthWgjFCSlB5FCrVX
 qty7LS+75rRyFe7bbYpAocQ4ysY3WZ1p2anD45Y6/A4dZgLcSQ19ZkgttwIFlZ3tQmPH
 nU4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IAaUt27Xf/cZXlpBITICBRKNNk+tVN9Pxcr5UjTf9CU=;
 b=Wtl4nT7jVriGpkaaJP9TB0ZptQdEtZ7/i+OMyY7pNsg+oub4nkK6BGwrwdZLaR7F5s
 2GsSTT6vk+ZV/Ru9iGaXb5J9ewWtWMbDOZEUnVm48AwT3+cxNvXJ8yNtEA0Xid2GAdEF
 O8+OKqAz+trShE4U5a6DcC1iEHyIv7hjraiKZrADHuB/8ZVkkuyHGQY9uhfRUZSf8mdp
 Oxc7oQdzp67vBSj5NFlKALhTiNeRyEsFaVxXdC3kqeUCHc5tW3U8WnrupNvsoh87Fgc2
 fk9vJMOvw4NzLY6jdwH71jr5/ktCy5OC8dzUOwkCjdgrFF5c5yJBQleptpGaMGcYBtGh
 +2LA==
X-Gm-Message-State: APjAAAWahobcCbfJMdMFF5aEck5RdigoF4drZPb6H80zP4+Y4c8CEO5h
 IGwpcq635NhnEiyByiSz4ORDwg2k
X-Google-Smtp-Source: APXvYqwL6urMeEDpZNnira0vZ3hH36vJYNRcLrBCr7XsF/94nlqIkyvZBMVIDiRgX+cXCcgfBtP6FQ==
X-Received: by 2002:a2e:9a11:: with SMTP id o17mr21488131lji.256.1577211017423; 
 Tue, 24 Dec 2019 10:10:17 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id f22sm58868ljh.74.2019.12.24.10.10.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 10:10:16 -0800 (PST)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBOIADkY014496; Tue, 24 Dec 2019 21:10:14 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBOIADRU014495;
 Tue, 24 Dec 2019 21:10:13 +0300
Date: Tue, 24 Dec 2019 21:10:13 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20191224181013.GH11377@home.paul.comp>
References: <20191224180213.3542623-1-raj.khem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191224180213.3542623-1-raj.khem@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_101019_179335_5CA2B90B 
X-CRM114-Status: UNSURE (   6.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] use strncpy instead of strcpy
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

On Tue, Dec 24, 2019 at 10:02:13AM -0800, Khem Raj wrote:
> +	hdr->name[strlen((char*)hdr->name)] = '\0';
> +	strncpy((char *) hdr->name, (const char *)name, strlen((char*)hdr->name));

strlen((char*)hdr->name) doesn't seem to be meaningful in this
context, are you sure you were not meaning to do something like this instead?

+	strncpy((char *) hdr->name, (const char *)name, sizeof(hdr->name));
+	hdr->name[sizeof(hdr->name) - 1] = '\0';

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
