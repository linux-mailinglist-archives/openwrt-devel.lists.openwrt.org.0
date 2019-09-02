Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B0FA4E99
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Sep 2019 06:26:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=frixACsuQcTCX55Fwg8sML5SgFZDJbTsFZJJD0QZRmc=; b=YU/6L96mEcZrL+
	KDb876IM5H73QqzdPrHBcHoEQFmJ3uNlKODvto9PcPrDZtfq/oCokrrLtVM8dMfLCJdX+1oMHeay9
	ltgwnyXtOYYGzAksJTEaNZnUwVFhofyMwAx95PqrmLuwe0zeD36DDsfNx12F56MLURtEm96QgKLOA
	iUpT4KBHFsB4jhsRButPXSNmsorC/DOBzif1SfxrntDycSAQL0mZbj6zybbnNza1lz4lXGIp1IH8b
	66gq4OabFYut0Yf45aCFc7GFmxaGL7bDhseL+JP3klyuRS/Ee+xD61thudHEWf9YiwNtKxKoQINtR
	BcDqll4HwWo1SggTfPcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4dux-0002S3-5k; Mon, 02 Sep 2019 04:26:15 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4dun-0002Rd-Ny
 for openwrt-devel@lists.openwrt.org; Mon, 02 Sep 2019 04:26:06 +0000
Received: by mail-wm1-x336.google.com with SMTP id y135so8865241wmc.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Sep 2019 21:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:in-reply-to:message-id:references:mime-version;
 bh=tAsVxPDK6674d6PhHLoNVo7EIjPkccant30F2F2L3q0=;
 b=GQhU/KKDqkM349cuBVJ0R70ZZYaOFlopkRbJ4OS1MVCPGv40rhDgbvSEUty7IZKQo2
 Ej4L+P1m5UbDK+WMyXh16Smp7WmLnxqZN1A6kN2EwwlyX2REVrCWCw49Aulwi2VxdFaG
 FtgEQfWRYqDj4/1TnSFnNzZMskuF0DOHCFLk7XKfTpzIRwODj+56EFiZirzyFAJKrEQF
 vxUhPVgcChElPOMVL2nAFfUPsTEk66dNWYj/xfyFNZQsjXRAwJoljUvaHwm4WonCwuhW
 y8EDev5DtSHkhkYLv+G0jjfN8kX7cP2WM4/tc4hlU49RvZ/p5uOkaV/AlyTqQTjQ7v5x
 a00A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:in-reply-to:message-id
 :references:mime-version;
 bh=tAsVxPDK6674d6PhHLoNVo7EIjPkccant30F2F2L3q0=;
 b=bwyao8Dlr5tf7R5cAyjQEA/kX65Nu/zAbQ7nDFo+7D86X3x2GsqJ/q1cgoIZxz8YbP
 WIGM0j6srlccPJECG5fsqoI7I6kQF5wbcfnesw8nVxfzEyGGFLKuq1THoC8igBSLtW0/
 PcUzi01tCvvy6fOj7kGBH2qPv5V1udSSjAbBmcRyEAw0roOSH5Dc/BI3x4dSJsVgSoT5
 lk4wFNK43J+/Q37HkNFpt+wjwwRmTqduXk1J5kV9RO0b8dzr4yLIzQCRRcudN+j9OjpZ
 5yzYVKoZOyNYhvhrJMydjtGVHvbb+NZ2Gw6lt9fUzh0dLf6D5sQzpgJfxYfvsucys9wJ
 IA5g==
X-Gm-Message-State: APjAAAWLvQhzGgCD5yGI63i4drs1AosfdSxjOsHX410zH4gLuSNNmnDo
 behbYlwdfcIylbJe4akvqFREKbnl
X-Google-Smtp-Source: APXvYqwIUmjkuCJ4McMES9LtVGtW/V/D05dwvJok2JYvIpyaYlgvSUxmL0kYMntzESExtVq3bF2/yw==
X-Received: by 2002:a1c:f518:: with SMTP id t24mr31541529wmh.98.1567398363011; 
 Sun, 01 Sep 2019 21:26:03 -0700 (PDT)
Received: from localhost.localdomain
 (host111-46-dynamic.5-87-r.retail.telecomitalia.it. [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id y14sm32787665wrd.84.2019.09.01.21.26.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 01 Sep 2019 21:26:02 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id a6bc592f;
 Mon, 2 Sep 2019 04:26:00 +0000 (UTC)
Date: Mon, 2 Sep 2019 06:26:00 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: openwrt-devel@lists.openwrt.org, hauke@hauke-m.de
In-Reply-To: <alpine.LNX.2.21.99999.352.1909020530360.2689@localhost.localdomain>
Message-ID: <alpine.LNX.2.21.99999.352.1909020624220.2925@localhost.localdomain>
References: <alpine.LNX.2.21.99999.352.1909020530360.2689@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_212605_805971_A9A7C068 
X-CRM114-Status: UNSURE (   6.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [lantiq] general help on AR10 platform
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

BTW, in vendor's cgu_init, seems the "enablement" part is commented out.

static int __init cgu_init(void)
{
     int ret;
     char ver_str[128] = {0};

     ret = register_chrdev(IFX_CGU_MAJOR, "ifx_cgu", &cgu_fops);
     if ( ret != 0 ) {
         printk(KERN_ERR "Can not register CGU device - %d\n", ret);
         return ret;
     }

#ifdef CONFIG_PROC_FS
     proc_file_create();
#endif

     /* malloc MPS backup mem */
     argv = kmalloc(MPS_MEM_SEG_DATASIZE, GFP_KERNEL);

     ifx_cgu_version(ver_str);
     printk(KERN_INFO "%s", ver_str);

     //enable
     return IFX_SUCCESS;
}

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
