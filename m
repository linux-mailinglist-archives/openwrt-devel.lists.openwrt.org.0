Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C43111BBF9B
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Apr 2020 15:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dNK875KEobCGT1G9LWH+wbr49N0NZibxzUG5pI893Pc=; b=i7ZoP15Mk4m2Hx
	SjeOZolSKJTn4sLtmEwW4K+Z6kCB01vd7zUiN70VmvckExSxjFtZhj+mv4mQ8JsnXSOHq2EinFhXa
	7fB79tMpu6mhQTNIUe/OEmfWg/UFGNEGXn85m1ubJwh69sKEpZ+NTOdeoG/MR+p63e78OGxLlDRAO
	myweztJ6a7QOSCiLUAapH5oQ3ZcEwvbJl4FSNuSwcOhzrQdmTpbLV5ml2K2VDVdSfu42n8i0Sn5b2
	zQ8ZdCtdqdltt77pjF+oS3QcujPdQK9HKWNm1xu5udXX7zW6i4L4dJjQB3O0iq6uOu90d5Xh6t4UH
	hLnqnH/74OcFsPinY9KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQLk-0008Nq-Ed; Tue, 28 Apr 2020 13:32:36 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQLe-0008Mu-4n
 for openwrt-devel@lists.openwrt.org; Tue, 28 Apr 2020 13:32:31 +0000
Received: by mail-wm1-x332.google.com with SMTP id k12so2777130wmj.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 Apr 2020 06:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=xCNyLRQHPZWft3ge4aZURywEYZyInE36ddRKlHW1yIw=;
 b=fhGrs6iN8GrjdGavnfLjr1jTmiRpYdnD68L9joKJ3JQhz7zqANI2cmc7JwV088it2c
 mYC0OLM+5TsUx6atyGYjWUac+/K8xAQQO1a9r81SUrv0ZiMegW9V49kN25J5rXvT6N0P
 ZMmgWDTeHRuMe+WCaNzMlxamnq+zX1Zafa9d8PHJPASdNuF3R3muHlORb8EzT2ksty0o
 zwsIXni+LgfwJBZ81l6oHtsCwgVR7c/AyMzegAEZNisDMjDey29zauTIRVd2dVkTZyz9
 9TJLhrgu/bhqN6eKg4hNLiHjqbp2QhJnS/QndJffrKZDfIdQ0/ocSAD0+Io7b/lXpgBP
 j/tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=xCNyLRQHPZWft3ge4aZURywEYZyInE36ddRKlHW1yIw=;
 b=m50khl5rV+HIN6sFyZFYt6T/+gizNLFoKoTDNc0Aa2kr5orynW/Q2bz78nH9WZPvri
 MeCNwz7ZvomKewUgGbU77enkgaO5JZHF7TwThpDS5BDG+2/K7OxpK8IFhOixtM2GPk8S
 KkMyqV0j3xr4O2HtY2IHStH4AJnoD1XJdN/p4+8bBaJjMJRsgKtT4wjZHgiD8Mod9Ou9
 Id+O/R986eNy69I6738Ld7Eh79JxtZ7dT/zSnzDT+SMEl0f6I2kedF+TNT3HuP/wpVcT
 BR6YaOtzyxvxlk4HfMrHScVVWQGE+t0A196JanCTm4OAARbxCK4tSTR//Wb9mN83J8Hu
 SdXw==
X-Gm-Message-State: AGi0Pua59triWCAWRGxxMts/TC8lzTT8osi15KGkZ0y42+H7i7iiMzbx
 9Fy9Okj4rFBUrDCEi5rBlV702yKZ
X-Google-Smtp-Source: APiQypIdBQYINANEYoF6JgGvgs+OjkkbfpNcEw7BUeEQtylmG/Hy1lZt+VXgayFHatoMG7HyFdB0UQ==
X-Received: by 2002:a05:600c:441a:: with SMTP id
 u26mr4940924wmn.154.1588080747753; 
 Tue, 28 Apr 2020 06:32:27 -0700 (PDT)
Received: from localhost
 (p200300F6671271ACF05436978CC415D4.dip0.t-ipconnect.de.
 [2003:f6:6712:71ac:f054:3697:8cc4:15d4])
 by smtp.gmail.com with ESMTPSA id 185sm3855092wmc.32.2020.04.28.06.32.27
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Apr 2020 06:32:27 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
From: e9hack <e9hack@gmail.com>
Message-ID: <75d8e585-74b0-c24c-0ea5-4243df88f2b4@gmail.com>
Date: Tue, 28 Apr 2020 15:32:25 +0200
User-Agent: Thunderbird
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_063230_186407_898C7E13 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:332 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [e9hack[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] kernel packages
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

Hi,

is it possible to depend on kernel versions in package/kernel/linux/modules/lib.mk?

With kernel 5.4.x, zram needs the additional module lzo-rle, which is part of lib-lzo.

Regards,
Hartmut 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
