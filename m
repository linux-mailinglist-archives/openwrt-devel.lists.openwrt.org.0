Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75050ECECF
	for <lists+openwrt-devel@lfdr.de>; Sat,  2 Nov 2019 14:19:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J5Lj74tiRIynazmRtwH9AXIdVl1Eh9grmp4DqXssZNY=; b=Ds896LcIvykv4a
	AuDYTtPpNFRgLgLXJufmEbb3WX99JO+674KFDCVllPtCeOFDcGD9k0/9cps2hIHrcT7DyEfIXnBm7
	hND1LloGn2ddVBRxV8JI6RxCyjnuKQLZo4R7cL6mMloaytABEVWR3cLJ0INeFEcU8xi2b52B5V04B
	MgBJFZUVLlLXf8uh+qVjIStwjLpy7nY2EiApoElUWAQHbapkZm42yWu7RBqGAnisQg+mkVXzzP2Tw
	ZT20/ym9xkYjcmjSPkHk2PPU8g4d5NTAe6M+kmtWJdKvpXIoRCfSrR4E7N+sRJ7dnyHkoOBCDYBBH
	5ksmSKQIB6rlloKSeq0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQtJB-0002s4-N1; Sat, 02 Nov 2019 13:19:13 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQtJ3-0002rR-M9
 for openwrt-devel@lists.openwrt.org; Sat, 02 Nov 2019 13:19:07 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 8so4619510wmo.0
 for <openwrt-devel@lists.openwrt.org>; Sat, 02 Nov 2019 06:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=sxwKczm7YoVAsXAGMSQtYc6IsMM/79T7tchhGSSPF2g=;
 b=UdoUdkK1xPiCgYgvs4rV6/6astAjJXePeO3TJLzb6tf3bpOrxckxyzaXXKmQ5TzsAg
 b8gcSw7pyuNJaB1T5OZrcqerOlMxwEK8guG4DT6ENWEYRR0w4/lwemqNi8ErWWTeTcOB
 X8k43Odapts3zi9QgDLxlHSJYx4dhsiMLu/ZNOHZY6nt+7N1/KwOvWJgzoggwaTzdgjW
 GtUJrdWvK9zlBW5U0nSBW7joajD0sXBcLJ1dq2x6IUnWYSLSFu0Pr8YxoeFs4TH3jz/l
 RNy5pQdvJct9q4uBc9kg29vW5RwaI69pcAbI8fDEZff0p++IU+ZiIVdlfmGbVbFTbHKU
 yxQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=sxwKczm7YoVAsXAGMSQtYc6IsMM/79T7tchhGSSPF2g=;
 b=mUq1ID3c/d5h8aDZCB1aKgXVu3+/5JRp6KycwvjR/CDhHOw5p67x7uTP+jYFyXtdsD
 JN3h2cGuyBM1Ds8ELayvPkqCFEPNyKzKdaVFr68PNjgQNZWEHTBE9GnBbivecGXwvJLO
 42BgIEn5xZ9MSLPT0dqzsZZvhB0oVX9hPt3aWbZTDsdwZX7ge/zkBvhTRQR/7HJp7mK6
 kXgmc48ZJCrlpST2Fae7sOinuxLEXDubpiur3CR8UD3iYIEhSLpG1A2OjiD/7lvRFeLH
 9Xdxo+FtJWk2cQtrfSHpka5jEKIy3pFNBB7CqdWNn1travaGKkYgGZmqJdnqvpZm8NRF
 iR+Q==
X-Gm-Message-State: APjAAAWyPnGu/r8N/lV3uzN9kHghC2N8tOETJmf9Uvawr7xZNuab1GVL
 +o8+88ntT7gXzCAKy5kXZ2Qf6PVgtaI=
X-Google-Smtp-Source: APXvYqybcWUU0WK1pJOcc/q/klW1TgZ4NXifY1+kg1LUb8giM6jm2V3YIFERM2is9H6/55ycAjYc0Q==
X-Received: by 2002:a1c:cc18:: with SMTP id h24mr15785760wmb.40.1572700743588; 
 Sat, 02 Nov 2019 06:19:03 -0700 (PDT)
Received: from localhost
 (p200300F6671B4BACF8AFDCE3CC9D40AC.dip0.t-ipconnect.de.
 [2003:f6:671b:4bac:f8af:dce3:cc9d:40ac])
 by smtp.gmail.com with ESMTPSA id u4sm2621166wrq.22.2019.11.02.06.19.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Nov 2019 06:19:03 -0700 (PDT)
From: e9hack <e9hack@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <f5199706-3e5f-3b10-531e-b7ea09939980@gmail.com>
Date: Sat, 2 Nov 2019 14:19:00 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_061905_749300_0664D970 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (e9hack[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] uhttpd/luci/rpcd is broken?
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
Cc: jo@mein.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

it looks like that uhttpd/luci/rpcd is broken. After login in the web interface, it shows for most pages "Status:
Loading View" and after a few seconds "Error XHR request timed out". Reloading the page results in:

/usr/lib/lua/luci/dispatcher.lua:254: /etc/config/luci seems to be corrupt, unable to find section 'main'
stack traceback:
	[C]: in function 'assert'
	/usr/lib/lua/luci/dispatcher.lua:254: in function 'dispatch'
	/usr/lib/lua/luci/dispatcher.lua:173: in function </usr/lib/lua/luci/dispatcher.lua:172>

From logread:

Sat Nov  2 14:07:29 2019 daemon.err uhttpd[2406]: luci: accepted login on /admin/network/routes for root from ?
Sat Nov  2 14:07:32 2019 kern.info kernel: [ 1363.021778] do_page_fault(): sending SIGSEGV to rpcd for invalid read
access from 00000014
Sat Nov  2 14:07:32 2019 kern.info kernel: [ 1363.030183] epc = 77d83dd1 in luci.so[77d80000+15000]
Sat Nov  2 14:07:32 2019 kern.info kernel: [ 1363.035401] ra  = 77d83dc9 in luci.so[77d80000+15000]
Sat Nov  2 14:07:34 2019 daemon.err uhttpd[2406]: /usr/lib/lua/luci/dispatcher.lua:254: /etc/config/luci seems to be
corrupt, unable to find section 'main'
Sat Nov  2 14:07:34 2019 daemon.err uhttpd[2406]: stack traceback:
Sat Nov  2 14:07:34 2019 daemon.err uhttpd[2406]:       [C]: in function 'assert'
Sat Nov  2 14:07:34 2019 daemon.err uhttpd[2406]:       /usr/lib/lua/luci/dispatcher.lua:254: in function 'dispatch'
Sat Nov  2 14:07:34 2019 daemon.err uhttpd[2406]:       /usr/lib/lua/luci/dispatcher.lua:173: in function
</usr/lib/lua/luci/dispatcher.lua:172>

After restarting of rpcd, the login page is shown again. After login, the same occur again.

Regards,
Hartmut

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
