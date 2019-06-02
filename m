Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE04C32355
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Jun 2019 15:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eMg4M6aBXcA+flS0K6S+srZlPnTxVoX7TWpWHmjh8K8=; b=c8PhxSw7xkODNyQaeKQSOqXvY
	ckdYkK74152mAtlbfWmEe1p/qq/hFGGOl6YG8rJMVbM0IcgY8qSSp81HYSTO0e2luqzxjY54BzQU/
	tWaNpjUeP3dqbvZb+hE1CJcMnF6cuYqdS8WI3aOt4Je1Q/7+ThbVvhWEBzakM+6ARsYv2C90pGywx
	HVJyBxxJq6OGqLGllGKPyXFfv7a/otghyV5un3f8l8hrqwSQczikgO8NeBUJ5E/DW3W2YfN4qzOe+
	MvC4abKTTERB2WqadB1DOcAJYhuspCB3WYd27xjyLgENlefzHLDU6OypSddhoDLJdeZmsMG9o63M7
	wOIbwfolQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXQ5Z-0004kz-TS; Sun, 02 Jun 2019 12:59:53 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXQ5S-0004kT-P1
 for openwrt-devel@lists.openwrt.org; Sun, 02 Jun 2019 12:59:48 +0000
Received: by mail-wr1-x433.google.com with SMTP id n4so6425431wrs.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 02 Jun 2019 05:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=iW+/ThTC1/RYUfFWusZZASMcPOpsMxvY+Tf5Jvt00+s=;
 b=rg/NfCFX72A3EtWLcGWCKnYxUemCc8qm6Gi4I7ZOPPWZSbbL73vVl5+0CXhlCoIsTq
 RDhyE43OgNPPCeTEdEa3e3MT33OsEvuTzY7otVGn/+iqY6EBedBvF760PXOfXLj2XeFx
 +kApz/g4jaF9OROjpzPfeulm8sYSxDhsW15svERnDswbvD3am1lkK5HyvF+bV7x9VYx7
 PytG2bfSpM+9TjjQD3QX/eMIqox6QP4he0VF4izJZiqg7y2URKZ8P5t0KjLCkjsf0RPZ
 C9hTZNGssWfs9xHDe6r/3VUKO8uljzFU0Xu0m+TmymSBUwBl50xs3WmtKsqBdZm1pzoj
 hGLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=iW+/ThTC1/RYUfFWusZZASMcPOpsMxvY+Tf5Jvt00+s=;
 b=blWUwkieHQf9+36GrIuDDt7atrctF2gYq3924Szeb8N9ULhklkTwn7/D3FjPhVy0JD
 sO3LMvWm039hOd65yhBdzIlh0g6CiduHhHb1WUosneVSh7NmV+VPF6rC34Sm10sPkGuF
 m/hWc4jTE5x2hNA8Qpt6LPdTDqE1P6iYA4Ucap0DZJALBYsQcVRcpPax+trl4UEaM08W
 WGl+PKs6eYFrLxoSbV/qBFQbBq2OJKhh1rPaDAM3wxa/9kcZGlqzLKLtMAzblahTdTZT
 dEsMSw9cLGDAx2javzJ48PHz1b/NyCdkvDFPnPALox7hds2RnOGvUbYaIEJl3hEPsR/3
 FGNA==
X-Gm-Message-State: APjAAAVDcOvRFJDaMNV5N6g+/MdqNlZ7otHEz2NHErZ4xGyIY8dTHss8
 WuTG/vcdHeJ5uQAhvfavKxJUYCCj
X-Google-Smtp-Source: APXvYqx5FkeRnm6iZDF37cL+mOf6xBpeqfNuIJ8X8WtX14e9bH9EApQUZkut0LDYisyNVrzL/4VSFQ==
X-Received: by 2002:a05:6000:1202:: with SMTP id
 e2mr12752052wrx.239.1559480382375; 
 Sun, 02 Jun 2019 05:59:42 -0700 (PDT)
Received: from [192.168.1.230] ([134.90.239.71])
 by smtp.gmail.com with ESMTPSA id u5sm10217953wmc.32.2019.06.02.05.59.41
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 05:59:42 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <a3db69d2fc4b460dcb2e58e2608f7fdd8640c5c8.1559159872.git.chunkeey@gmail.com>
 <20190530100027.GE13432@meh.true.cz> <2839502.UJiEac7TxE@debian64>
 <20190530153018.GF13432@meh.true.cz> <20190602120630.GH13432@meh.true.cz>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <fe1c4aa1-8423-9b80-7738-e346d4e23edf@gmail.com>
Date: Sun, 2 Jun 2019 14:59:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190602120630.GH13432@meh.true.cz>
Content-Language: en-US
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_055946_899236_D7607383 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel]  EFI images for x86
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

On Github there is a PR about adding EFI image generation

to the x86 target, but it has not been picked by anyone for a while.

This is an important feature, can anyone look into merging it

https://github.com/openwrt/openwrt/pull/1968


-Alberto


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
