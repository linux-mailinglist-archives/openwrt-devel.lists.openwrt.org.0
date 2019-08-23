Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3310F9B15F
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 15:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wLfYowci0a1gPZzu8MEWEYMRmwps51JmTE9bydiTMXo=; b=LTF+AzBRCFzAyN
	P3y4S5TM2vFYk+I+AeDKtkUFAk3H/Fnc372YgtPW9UiFHKqy88MYoGVdAPUYTG4Snde7GUTDeLxLR
	V7a0aGBgyUyWr2KSDO6WiCzSUluPyljoXtRSRYwySdUCfqEPYFxfOLDMDbsvMuBK41239k1HuSGpN
	44KogrmP8f5Wv774XLzQyft1pOMA28dWl2+TM2g8NyAOvZBl6zYw5mfCcjKyRu9GJQqdMFj1LNJhK
	r1vJweBu9BFqlPM19aj1I1tLi1Ep0Z50MUvW01rnop+27rYfMSbwsyqvotonIByVxvPF+PgVf3KUu
	XSkU36Cy5871pMtdi++w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1A1G-0000qz-Sj; Fri, 23 Aug 2019 13:54:22 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1A19-0000qh-K4
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 13:54:17 +0000
Received: by mail-qk1-x734.google.com with SMTP id d23so8252421qko.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 23 Aug 2019 06:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=5lHRmFMISb1HM4QSedEBDxjvkiwfb0UxM+SNXg0rkfo=;
 b=KI38rjtC7TuTYc7dLgh9U2N1v+4LH0YFr4muJ18uHOmg5++8ol9/U8CWG3mar8LLNU
 8NirTG9gSOKcrzXRLPIFAEBefeL4SyX/Cgafr9adLi/y4BcZtNE3AqOHbYtvRpRZ5a3x
 4KjuoH8RgXYD4DlJx3WIOtAhguqs+isIc6lxghk93k8iJQVnYwRQsns/zCWl01iAQqpG
 ussejykHhBvPfVbvPafcuX3TPmwlqUZuiU4zYuVvlt2jAjoClDQuldAuPjowvZ3+ppwu
 eGfSkxgHEnktYM0aEfb9hh0rLE0k2/ZsnH12nbdbdqq15Yn3QlrLLGkRoDXKNhTwI7lb
 /L5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-transfer-encoding:content-language;
 bh=5lHRmFMISb1HM4QSedEBDxjvkiwfb0UxM+SNXg0rkfo=;
 b=sMUN/Vy87QzQzolnfMMAxt9j+QdwEl0GKO/atfhMYusBIRwgxNd3PIhsbWR4L2Bwy7
 pYF7N4Pjvga4J9eloOG2QVr1W+vL7l67LF5OLWMuQC12sCe24GEykdXy1s1k1RUtl3bg
 K2MDKL6Jht9VU+Cx2VqRO9tBqX1P6+lNWh1buzrHSk+3g+rd+Yr4xEk2AdIVMG4SlG2S
 ET+1AY7RWVE6F8B+D0C63m2QIDCtVSfvvrUj0NJMML/JZZmd6aLUZBoX0isqu/q6osmF
 RR1DDgYZD5GkmmPW33leURzkgZ+c+JKGCpmrDuOqahMWwWiErgk1hXw5N87HNHFR6ItQ
 hh3w==
X-Gm-Message-State: APjAAAVivnCGbRph+Md8jUKUzUAPUjoSyRWOBItUTSuou4s17GTrQ2BL
 d6LrhE2IEsLC9JRrGFgqI7XmCQZl
X-Google-Smtp-Source: APXvYqyzgl2ih4+26T2T54Vy5BY1+AQG0kdx+jY0SZxmp4dZVqrMJqCWdHIn4q+MHKTbKjX2cuv4tQ==
X-Received: by 2002:a37:9281:: with SMTP id u123mr4110022qkd.270.1566568453849; 
 Fri, 23 Aug 2019 06:54:13 -0700 (PDT)
Received: from ?IPv6:2804:368:9:8000:d097:f72d:e565:d900?
 ([2804:368:9:8000:d097:f72d:e565:d900])
 by smtp.gmail.com with ESMTPSA id b202sm1486777qkg.83.2019.08.23.06.54.12
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Aug 2019 06:54:13 -0700 (PDT)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Fernando Frediani <fhfrediani@gmail.com>
Message-ID: <ac4491d7-adc2-f818-7b64-403140bc2d5b@gmail.com>
Date: Fri, 23 Aug 2019 10:54:10 -0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_065415_687633_C902B0AC 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:734 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fhfrediani[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Questions about IPv6 and NDP-Proxy
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

Hello

I have seen on some old OpenWrt documentation 
(https://openwrt.org/docs/guide-user/network/ipv6/start#router_advertisement_dhcpv6) 
that by default when the router cannot receive a IPv6 Prefix Delegation 
(IPv6-PD) but only an IPv6 in the WAN it can automatically detect it and 
act as a NDP-Proxy so the clients in the LAN interface have IPv6 
connectivity.

I have tested it and was unable to observe this behavior without 
changing any configurations. If however I configured both the LAN and 
WAN6 interfaces as DHCPv6, RA and NDP in Relay mode plus WAN6 with 
'option master 1' then it works as expected.

Does anyone know if this automated behavior is expected or if in these 
cases it is always necessary to configured the interfaces in such way to 
make that work ?

This is useful as many people inadvertently connects the LAN port of a 
home router to a WAN port of a second router in order to extend signal 
and by using this technique allows that users connected to the secondary 
routers to keep IPv6 connectivity.

Thanks
Fernando


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
