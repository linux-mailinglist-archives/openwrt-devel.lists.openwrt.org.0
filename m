Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC8F1A0F15
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 16:23:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P9A46FnADMXFmIfmcC7MF0ePkB9A4s6VNup78SdI6c8=; b=D9aKu/kSTdq442tR51Qz6BK7U
	EpHrcMmdHLHq+9PDKhDHSgIeWanThlA7A2b+AzIkO4pXj77y+rehHZoaVe9bvgfidWUv1dmhu6yyk
	d3RxAVchrs3ZUyIq17FVpnTaFyisUJodPENAIZZBh5s6LALh1hQT1SlNEh58oJyO9l15Pb1XDXpOm
	MjLa5qCVsRREvBN7WppMY7HA9qllSw82GECUYO/+zIOXpRN3VpSTbvDhw5B7ArgoiLjdSVyXeE1jH
	jZSNr1wFVvDow2H5BicjAa4HwN8JdrT68xbJv3x+dIiG46rToiqOz1q25CrCQdOssbtJPAZsm4WI+
	xyDlrDY6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLp8A-0005gi-ME; Tue, 07 Apr 2020 14:23:10 +0000
Received: from meesny.iki.fi ([195.140.195.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLp7p-0005ZY-Br
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 14:22:52 +0000
Received: from [IPv6:2001:14ba:8091:2700:ed00:736d:87d7:d06]
 (dtckwryjqyb527b03bzdy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:8091:2700:ed00:736d:87d7:d06])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: hannu.nyman)
 by meesny.iki.fi (Postfix) with ESMTPSA id 56126205DB
 for <openwrt-devel@lists.openwrt.org>; Tue,  7 Apr 2020 17:22:38 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1586269358;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ezsZUzwTnGskPihRc9NosGFjM/KFQnWDQQ7SoNfmlyg=;
 b=O4oLMxFYKlD1mx6fVrlrRa1p+XbngHCA08SDS0GxDld/fWe841xlv5voGdCvzn6XWZkiN1
 MVmDJQ1ZTtVcm+A+UJzSp2YaOsgS0GcavN1LnoFXq8dZZ3O6lbJEu3VKYYg49ziTK62hig
 +8vWk6H1ntLh0+60aFmZeg0nD+h+H9w=
To: openwrt-devel@lists.openwrt.org
References: <87eeszs9uu.fsf@miraculix.mork.no>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <b5c15de9-5d32-2a99-922b-22b4fb1056b8@iki.fi>
Date: Tue, 7 Apr 2020 17:22:37 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101
 Thunderbird/75.0
MIME-Version: 1.0
In-Reply-To: <87eeszs9uu.fsf@miraculix.mork.no>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1586269358;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ezsZUzwTnGskPihRc9NosGFjM/KFQnWDQQ7SoNfmlyg=;
 b=HVS5Z8Bd3Vh9hrxFf64wWoXX/1mxWD3cf+ssVTHT/eY2I7aO9Cu8tK7bw76ST2MrRi4lKB
 JUPomQxQCpG1SyvTmi+RJRD+1yoIDDIxo+NisAmhdQ8FnTq7EqXx08nX5SAI6o95Id2pmO
 nw2Ti90lumggkbn77sW/Kx/foyPmuIM=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1586269358; a=rsa-sha256; cv=none;
 b=WQRBos2dYhOepfmad6eAmZZJxUJb4CtHEBcXIe3TE2VY/32b+KPMc0GM9b2VxLyTK1vO1g
 tANhGrIFYAqW3atJUgBecX2nHa8Z7clM1TVzkB5HJw7CM/9G8QNb4U86aS7+wFX/JdyyqB
 WGH83mp8XGVEtfOO1jRhpg4ZO1qxpFo=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=hannu.nyman smtp.mailfrom=hannu.nyman@iki.fi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_072250_577590_420FF8A3 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Is it possible to create two images for the
 same device with a different set of DEVICE_PACKAGES?
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

I do not think that there is a nice clean solution, as I do not remember 
seeing a solution of different packages for iniramfs, factory and sysupgrade 
images.

I would approach that with a two-step build process, using two .config recipes:

* First a build with a smaller .config recipe without that large Quantenna 
firmware. This creates the initramfs image, (which you copy to a safe place 
before the second build)

* Then a second build from a recipe including the Quantenna firmware. No need 
to do "make clean", so the second build is rather quick. That produces the 
full sysupgrade image.

In your build automation scripts, those two builds could be run 
consequtively, with a copy step between them.

That will be much easier than trying to code a logic into the actual OpenWrt 
build Makefiles.



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
