Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8FF88EE9
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 02:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2+qksUfkZ7hY2p9UyfXupLjxej7u9d3GaxMGZIt72h0=; b=uglcSkDZWX9X2XwuORv47qoEw
	f/mArywNvdivRMO+xWAfhBqjz1LDMRtPE+AnPfLP2m+MkWyepJPt2R7pz6Yv0y0jnjKN46eTsdKSs
	2JQc14YNykk1jvQgAX5YG4pzGKeA+TkXYaIf8kOIMmbM2OPEuFVNcy9uT+YNXkG1BKFrTuLAcIviR
	6SIJBwN9hNHJGSsdxVcOitzkKdlRJWqU+iXGqvucLjSx3OoQDbUoirqmt/7i6Z4OxXzhRkrleqz3Z
	C90vBVTqqwH3Pg8q6WnxvY2UPYRqRVi/IawfrvtpPf6P+ICsleOeXany6oCWIS8c5osTJK0L+Gu3V
	mGkySZP6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwbhj-0006eq-Fc; Sun, 11 Aug 2019 00:27:23 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwbhZ-0006eX-9F
 for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 00:27:14 +0000
Received: by mail-wm1-x335.google.com with SMTP id u25so8764593wmc.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 10 Aug 2019 17:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=ctYGxjZGAKFOjM+seqo47meWCxjNVrzZdP6s+oVIPSY=;
 b=SHsGdLvv0hOP+sl48G5WDSdkDD+jAOjUD/OEoy+4Qp/YO4yiBIKthcaM2mdYHpzK87
 amf7uV7Vt4SZNZo85VNpA7dk78UdliFPgeA/yzeeVbfODEoJgcKDtppCtbg4n8t/q5gO
 bjB3vmsBL0CaUB+BTtLD3OHC9sUwKQcU5dP1MF+XeR3WvXRfX9WHMrQsLSLZcKlyDmcz
 edek8B2rOEdS+4uN5ZM98fjU2euQq8DnwGgoqMlZoaBpKx+5NH2lQ/NhcGOOyVRirtXI
 cLX8GEyRSAirlCUSoYy7tjvXIDksdlwiHgk84BWbfPU9zOMYwiuxdeO215SX5O+yd4z9
 y48Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ctYGxjZGAKFOjM+seqo47meWCxjNVrzZdP6s+oVIPSY=;
 b=H7sa8rYQiXWS+P0K3+ZQeGndDl1zgQTQ8ssjwLDTJr7gb+dMhdTmBYqowQw2mszR/t
 mXiehfYk7dbXwhNARvfb98/wCjS8QO188Euqe98FHLANl88xH1aELVti9l6aRCbNg23O
 BLGejZFZxc6vnrpqFCMadzNmKmIcJ7LYbNLeICH4dp4iLAecnscgKmhK5jn2yey6Z7oF
 ZnFfQgOjnLERsuswf/xSDAN3Ri7DoSxMLughZXQzyYT5GN2l0E/B0FVJHsd8bcfozB9E
 y40L/Bncy9SyVHjR8bSbz9n6Mp9dRc2/a8v4JEGWXqtJFA7H688aLxe02SosUb3C/dHB
 HUgg==
X-Gm-Message-State: APjAAAVr83YNZMaCSRy2arKO+DvsL1RB2WiT7nAOThcIj3rCIxtLUi/R
 24epEw3fhJRNUXW7CACVKuKkiOVG
X-Google-Smtp-Source: APXvYqwMgFnUgFGJAuZNyY9swNGs8DEhe+NAlUKHcP9Rjxm5SG5bS5KQxwDBwZciLGOGpD5z77QvlA==
X-Received: by 2002:a1c:9a95:: with SMTP id c143mr5697858wme.2.1565483230841; 
 Sat, 10 Aug 2019 17:27:10 -0700 (PDT)
Received: from [192.168.1.230] ([134.90.239.71])
 by smtp.gmail.com with ESMTPSA id b3sm643842wrv.43.2019.08.10.17.27.10
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Sat, 10 Aug 2019 17:27:10 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <mailman.16115.1565442835.19300.openwrt-devel@lists.openwrt.org>
 <alpine.LNX.2.21.99999.352.1908101628250.23494@localhost.localdomain>
 <4fc1072b-22ae-3cd6-d592-dd8c757a6dd9@gmail.com>
 <mailman.16138.1565482112.19300.openwrt-devel@lists.openwrt.org>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <c2c70704-2a93-e293-4dd9-29ba823e09ef@gmail.com>
Date: Sun, 11 Aug 2019 02:27:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <mailman.16138.1565482112.19300.openwrt-devel@lists.openwrt.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_172713_352057_D32136C4 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Has OpenWrt suport for Powerline devices
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


On 11/08/19 02:08, Joan Moreau via openwrt-devel wrote:

 >The Powerline system needs a "Lan name" in order to synchronize teh 
devices.

 >How this is translated in OpenWrt ?


RE450 is not a powerline. Only supported device is

*https://openwrt.org/toh/hwdata/tp-link/tp-link_tl-wpa8630*

and it communicates to the QCA7500 powerline chip with

plctool from open-plc-utils package, see the docs for that

https://github.com/qca/open-plc-utils/blob/master/plc/plctool.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
