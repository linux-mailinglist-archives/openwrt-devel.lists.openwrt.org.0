Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A97B51A52DD
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 Apr 2020 18:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k8khgtaIGf5qtKy0ccWTTxy4hKfVH51Re1gL4ZAkW6c=; b=Rdukm2zU4T60VqK3P9BNkQs2c
	fngTYOog3y99BiN6VSebCZ2a8HfLSSEztZZ55x43Hap39nRAOQbpS14/0V+Zfs5b7cIkeIvcGWXUB
	modtfNZGYNWZuk9fFvk88QGrlS8MsMPz037VEml1jhxI22kB5vmYIIz1n0l/k8CVB1kJW2IWJ0Jn5
	3uqJ4KpY/FFYRmYTa3FHgLIU0u23h3e0AsuyGBoW7A8SP8/Nu8YWS3zZ26Ky5iZhOsvio4bKVkcZt
	IegelCguTJdUaZ5o1Mkgb4vvQb62Lr2H5kNSYaPVF92xDFGYmrkfoWMBOu1qElnnKWqtd8KGS6i4M
	8eNbaKWZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNIoq-0004tG-83; Sat, 11 Apr 2020 16:17:20 +0000
Received: from meesny.iki.fi ([2001:67c:2b0:1c1::201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNIog-0004sh-EY
 for openwrt-devel@lists.openwrt.org; Sat, 11 Apr 2020 16:17:12 +0000
Received: from [IPv6:2001:14ba:8091:2700:7989:54a4:247f:6e66]
 (dtckwryd5vgmmkld-q5xy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:8091:2700:7989:54a4:247f:6e66])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: hannu.nyman)
 by meesny.iki.fi (Postfix) with ESMTPSA id 8B660205D6
 for <openwrt-devel@lists.openwrt.org>; Sat, 11 Apr 2020 19:16:59 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
 t=1586621819;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BeUY/q3V7s6UQxI4ququ/lqTL4GtX2vZSYVBVJYkXns=;
 b=AyCabwhCj7sxjlQYnImDO49Sh66z4L4iPRkpcG8D7Th3Fu9Z7+4QdHSFuxIbikBf3oPkbS
 hj10lGaAni3mf6H550ZnlQqQ6sKWm/1CQA8kbC6YX9hBYmxEaYoks8hqoM8MiqE3kacfaB
 10vboilO5oAtiK/72M3PqFX9ZxiSxi4=
To: openwrt-devel@lists.openwrt.org
References: <a39e388f-a421-3b22-f271-418473b71bf3@iki.fi>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <c55e3594-f662-a75d-a0a9-f74d24375850@iki.fi>
Date: Sat, 11 Apr 2020 19:17:00 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101
 Thunderbird/76.0
MIME-Version: 1.0
In-Reply-To: <a39e388f-a421-3b22-f271-418473b71bf3@iki.fi>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
 s=meesny; t=1586621819;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BeUY/q3V7s6UQxI4ququ/lqTL4GtX2vZSYVBVJYkXns=;
 b=D/J7s9X8h3jnxwVKpgulZs/09MVmksRjSkBvJ7pN7SCp6jwcoR11ffNBDaChNCCTE82Wln
 V6eiOv942TWHxI9a4z4Cr+1u7a3Cmdzz8DqnqYAevWjJapDz1bXAMABJZkjazGE6TSe9v+
 rJqkRwkK/x9dGZMjg3ygMOHqgMfLO+U=
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1586621819; a=rsa-sha256; cv=none;
 b=lty+9VsjOn1aruYyFrFuTQwAmGd5P9Ozp5Vxwr9zv7LXxWlNNrA5Pl+qQA92W3UPxJGMvE
 JqICCWZFAKSxASZpN9l5SOHU8iVFqWVQCzc4oAAELLYAuoD2S67Ed3g40U9dprpd0JJfxJ
 w16jumc5fz7DjnoCDTUKje9DAN/GAPo=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=hannu.nyman smtp.mailfrom=hannu.nyman@iki.fi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_091710_830378_DE9D1470 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Phase2 packages buildbot has failed since the
 kconfig changes
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

Hannu Nyman kirjoitti 11.4.2020 klo 17.07:
>
> But most errors seem to be related to recursive errors inside the rather 
> complex mac80211 wifi driver collection. I have a hunch that for buildbot 
> the "treat recursive dependencies as warnings instead of errors" option 
> (from 3204430e3 ) should be activated in the config binary, or 
> alternatively some major work for re-organising the mac80211 submodule 
> dependencies needs to be done.
>

One interesting aspect:

The kmod related errors surface in the phase2 buildbot that uses SDK to 
compile non-kernel packages. The kernel and related packages are built by the 
phase1 images buildbot that also builds the SDK, so this phase2 packages 
buildbot should not even touch the kmods. But still the recursive config 
error realted to them apparently break the buildbot run.

That makes me wonder if the current settings have wider impact on SDK usage. 
Possibly the SDK reacts badly to the current config logic. (Personally I only 
compile with the full toolchain, so I have no experience with the SDK.)



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
