Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A096387ABF
	for <lists+openwrt-devel@lfdr.de>; Fri,  9 Aug 2019 15:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s8fWA6jlJME6hodCnPN8qtegj86hBbEn0tiwp5OxhSM=; b=ZggH+olynwg1jDYTUA2PAt1Xe
	ZhaQ1ILddbZ+QNzbzOrGg2zhqNV6OSjoJkdM7hfQPLiUUN0ysfEBcFVIhaDPya5JTK1lIldWcEg/G
	20Uub3pPLsG7RNqfyOuoOKo5TAAG0oBtXzWJZN6Gq8elnhgt2BP8ujHj9N8iPcxfQ5TFIWgiPSttP
	/nAVmmRmGMjhkPSrvl1aeATErAoOraRLnnfUKr+EoLAgPtqQ5njCb4Xf911ig9ZramLsyro4nQzbv
	wKxYXm8lk3nyN0h2qbqtUkV8WYO2jjcGvKN5fNnRXM4cKZMXeA4ysCYRDcYijHpQB9X+oTuQ+8Kuj
	Q27HKQX5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw4VS-0002Rv-Oo; Fri, 09 Aug 2019 13:00:30 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw4VF-0002Qk-DI
 for openwrt-devel@lists.openwrt.org; Fri, 09 Aug 2019 13:00:18 +0000
Received: by mail-wm1-x32d.google.com with SMTP id v15so5636380wml.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 09 Aug 2019 06:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=1aHScKIg9sqm76ogKLvegQVfnvh1cceqWDxnBFnf+oM=;
 b=rOIUJnI+VBOpzRkqMfmbQc+Bhon/v5HIbpHTwdZLEafXnxWBfHytiKdHYwj0LhMdZ/
 CR69x5RXo7Kuv9st88XbeJAgKG3O99RLIkQAnHmffxPJXfsJBs6Bprm1mgi90oZc0yhd
 2zUTHeu3FIYgPODfcvp1Id6r0cbI6j4Aac+H+h3NnfOTuMqj7KT14mafT20RV8N6uyac
 7pGFHFFEZoK7rClFZpXYe7vRjA5akOk5ta9DnJntmv0TDrukop2C0kdEOyEJEMtrd0Fa
 GqpT+PlDYB6JAQrcz+OQGoWLhc/qYWprPChiiHSoYt15e5+tRYWIqbTlXYCkGIk4Ixi4
 evGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=1aHScKIg9sqm76ogKLvegQVfnvh1cceqWDxnBFnf+oM=;
 b=egqHOJBYxNzkEfwMOmUZ3N/c3ceqUlMnhjZbdcyo7nSqYOtU2NakktIWnfYLKLzr9f
 OdqV/1k7LXufmtG8LF4JGUg40vrBswob10v4czMoeJ5/7kKm3S5m/fh/JER99kG9CgKt
 FYPOS7Csj6XGgxcd/EDFv/C3C8h9N+Lp/w+DxMB7f1UjAkhl/pbg1ljTRDXFYq7O+MVR
 9w3heNHUZ3hMCAzwXGE0L1X+hesHMAV9UX6T7dCS+SXGeXe3LtttDwYpam9DKxgCmfjy
 cpJAkmZM0MHuTQRJD1SqPSmig6xt0ZIadV63EbIXX/5r+NLemGbLTrjPagsMLHXuAREW
 8dUg==
X-Gm-Message-State: APjAAAXeuh20flpx9UXkhGUTpk9fkfqHpaNHcvQB8Rr/wBzbXHEG4h7Z
 g8ZtGjsNZ1od/DkhQa8LUyo=
X-Google-Smtp-Source: APXvYqzCC5OsYRVYY8FH2M6v7Ev72H01bBXK6uOR7Yjj6b2pjYSRNET7ZkAi4PuGtQ7RtygyeYy6mQ==
X-Received: by 2002:a1c:2581:: with SMTP id l123mr3992897wml.10.1565355613978; 
 Fri, 09 Aug 2019 06:00:13 -0700 (PDT)
Received: from localhost.localdomain
 (host78-240-dynamic.54-82-r.retail.telecomitalia.it. [82.54.240.78])
 by smtp.gmail.com with ESMTPSA id l14sm1698697wrn.42.2019.08.09.06.00.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Aug 2019 06:00:13 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id 7c82e3d2;
 Fri, 9 Aug 2019 13:00:11 +0000 (UTC)
Date: Fri, 9 Aug 2019 15:00:11 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
In-Reply-To: <mailman.12538.1564422079.19300.openwrt-devel@lists.openwrt.org>
Message-ID: <alpine.LNX.2.21.99999.352.1908091457130.5788@localhost.localdomain>
References: <alpine.LNX.2.21.99999.352.1907291535010.27116@localhost.localdomain>
 <mailman.12538.1564422079.19300.openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_060017_478687_882390A3 
X-CRM114-Status: UNSURE (   5.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Problem reading flash zones in ath79
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello all,
and thank you for your help!

Thanks to the nice help of Boris Brezillon @ linux-mtd ML, it turns out block devices have to be 512B aligned. Reading from mtd devices directly reads the entire thing.
I was, in other words, doing it the wrong way, by reading mtdblock. :)

Thanks Martin, and all!!


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
